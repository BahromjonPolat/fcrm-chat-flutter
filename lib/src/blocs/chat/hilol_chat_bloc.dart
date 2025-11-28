/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 15:00:39

*/

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:hilol_chat_flutter/src/utils/logger.dart';

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
              baseUrl: config.baseUrl,
              enableLogging: config.enableLogging,
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
          Log.e(state.status, fileName: 'hilol_chat_bloc.getMessages');
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
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await state.chat?.sendMessage(
            message,
            endpoint: endpoint ?? state.defaultEndpoint,
          );
          emit(state.copyWith(status: FormzSubmissionStatus.success));
        },
        sendImage: (imagePath, endpoint) async {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await state.chat?.sendImage(
            File(imagePath),
            endpoint: endpoint ?? state.defaultEndpoint,
          );
          emit(state.copyWith(status: FormzSubmissionStatus.success));
        },
        addMessage: (message) {
          final messages = [...state.messages, message];
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
