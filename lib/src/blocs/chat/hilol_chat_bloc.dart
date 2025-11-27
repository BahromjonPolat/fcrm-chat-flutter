/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 15:00:39

*/

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:hilol_chat_flutter/src/models/hilol_chat_register_model.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

part 'hilol_chat_event.dart';
part 'hilol_chat_state.dart';
part 'hilol_chat_bloc.freezed.dart';

class HilolChatBloc extends Bloc<HilolChatEvent, HilolChatState> {
  StreamSubscription<ChatMessage>? _messageSubscription;
  HilolChatBloc() : super(const HilolChatState.initial()) {
    on<HilolChatEvent>((event, emit) async {
      await event.when(
        initialize:
            (
              baseUrl,
              companyToken,
              appKey,
              appSecret,
              socketUrl,
              enableLogging,
              defaultEndpoint,
              onSuccess,
            ) async {
              final chat = FcrmChat(
                config: ChatConfig(
                  baseUrl: baseUrl,
                  enableLogging: true,
                  companyToken: companyToken,
                  appKey: appKey,
                  appSecret: appSecret,
                  socketUrl: socketUrl,
                ),
              );

              await chat.initialize();

              _messageSubscription = chat.onMessage.listen((message) {
                add(HilolChatEvent.addMessage(message));
              });
              final registered = await chat.isRegistered();

              emit(
                state.copyWith(chat: chat, defaultEndpoint: defaultEndpoint),
              );

              onSuccess?.call();
              if (!registered) {
                return;
              }

              // await chat.sendMessage('Assalomu alaykum! Bu birinchi xabar.');
              add(const HilolChatEvent.getMessages());
            },
        register: (data, onSuccess, onError) async {
          if (state.status.isInProgress) {
            return;
          }
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await state.chat?.register(userData: data.toJson());
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
          await state.chat?.sendMessage(
            message,
            endpoint: endpoint ?? state.defaultEndpoint,
          );

          // emit(state.copyWith());
        },
        sendImage: (imagePath, endpoint) async {
          await state.chat?.sendImage(
            File(imagePath),
            endpoint: endpoint ?? state.defaultEndpoint,
          );
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
