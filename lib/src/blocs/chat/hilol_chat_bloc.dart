/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 15:00:39

*/

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:hilol_chat_flutter/src/extensions/message_x.dart';
import 'package:hilol_chat_flutter/src/models/image_meta.dart';
import 'package:hilol_chat_flutter/src/utils/image_utils.dart';

part 'hilol_chat_event.dart';
part 'hilol_chat_state.dart';
part 'hilol_chat_bloc.freezed.dart';

class HilolChatBloc extends Bloc<HilolChatEvent, HilolChatState> {
  StreamSubscription<ChatMessage>? _messageSubscription;
  HilolChatBloc() : super(const HilolChatState.initial()) {
    on<HilolChatEvent>((event, emit) async {
      await event.when(
        initialize: (config, userData, onSuccess) async {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          final chat = FcrmChat(
            config: ChatConfig(
              enableLogging: false,
              baseUrl: config.baseUrl,
              companyToken: config.companyToken,
              appKey: config.appKey,
              appSecret: config.appSecret,
              socketUrl: config.socketUrl,
            ),
          );

          await chat.initialize();

          _messageSubscription = chat.onMessage.listen((message) {
            add(HilolChatEvent.addMessage(message));
          });
          final registered = await chat.isRegistered();

          emit(
            state.copyWith(
              chat: chat,
              defaultEndpoint: config.defaultEndpoint,
              status: FormzSubmissionStatus.success,
            ),
          );

          onSuccess?.call();

          if (registered) {
            add(const HilolChatEvent.getMessages());
            return;
          }

          if (userData == null) {
            return;
          }
          add(HilolChatEvent.register(data: userData));
        },
        register: (data, onSuccess, onError) async {
          if (state.status.isInProgress) {
            return;
          }
          final chat = state.chat;
          if (chat == null) {
            return;
          }

          final isRegistered = await chat.isRegistered();
          if (isRegistered) {
            return;
          }

          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await state.chat?.register(userData: data.toJson());
          emit(state.copyWith(status: FormzSubmissionStatus.success));

          onSuccess?.call();
        },
        getMessages: (page) async {
          if (state.status.isInProgress) {
            return;
          }

          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          final result = await state.chat?.getMessages(page: page);

          final messages = [...?result?.messages, ...state.messages];

          emit(
            state.copyWith(
              messages: messages,
              status: FormzSubmissionStatus.success,
              hasMoreMessages: result?.hasMore == true,
              currentPage: page,
            ),
          );
        },
        sendMessage: (message, endpoint) async {
          final chatMessage = ChatMessage(
            id: 0,
            chatId: 0,
            content: message,
            type: MessageType.user,
            createdAt: DateTime.now(),
          );
          final messages = [...state.messages, chatMessage];
          emit(state.copyWith(messages: messages));
          await state.chat?.sendMessage(
            message,
            endpoint: endpoint ?? state.defaultEndpoint,
          );
        },
        sendImage: (imagePath, endpoint) async {
          final fileName = imagePath.split(Platform.pathSeparator).last;
          final imageFile = File(imagePath);
          final image = await getImageDimensions(imagePath);
          final chatMessage = ChatMessage(
            id: 0,
            chatId: 0,
            content: imagePath,
            type: MessageType.user,
            createdAt: DateTime.now(),

            metadata: ImageMeta(
              isImage: true,
              originalName: fileName,
              filePath: imagePath,
              size: 0,
              width: image.width,
              height: image.height,
            ).toJson(),
          );
          final messages = [...state.messages, chatMessage];
          emit(state.copyWith(messages: messages));
          await state.chat?.sendImage(
            imageFile,
            endpoint: endpoint ?? state.defaultEndpoint,
          );
        },
        addMessage: (message) {
          final messages = message.isUserMessage
              ? [...state.messages]
              : [
                  ...state.messages.map((e) => e.copyWith(isRead: true)),
                  message,
                ];

          if (message.isUserMessage) {
            final index = messages.indexWhere(
              (m) => m.isImage
                  ? m.imageMeta.originalName == message.imageMeta.originalName
                  : (m.content == message.content && !m.isSent),
            );

            if (index != -1) {
              messages[index] = !message.isImage
                  ? message.copyWith(
                      metadata: messages[index].imageMeta.toJson(),
                    )
                  : message;
            } else {
              messages.add(message);
            }
          }
          emit(state.copyWith(messages: messages));
        },
      );
    });
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    return super.close();
  }
}
