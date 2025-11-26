/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 15:00:39

*/

import 'package:bloc/bloc.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

part 'fcrm_chat_event.dart';
part 'fcrm_chat_state.dart';
part 'fcrm_chat_bloc.freezed.dart';

class FcrmChatBloc extends Bloc<FcrmChatEvent, FcrmChatState> {
  FcrmChatBloc() : super(FcrmChatState.initial()) {
    on<FcrmChatEvent>((event, emit) async {
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
              emit(
                state.copyWith(chat: chat, defaultEndpoint: defaultEndpoint),
              );
              final registered = await chat.isRegistered();
              if (!registered) {
                add(
                  FcrmChatEvent.register(
                    userData: {
                      'name': 'Bahromjon Polat',
                      'email': 'bahromjon.ergashboyev@gmail.com',
                      'phone': '+998901234567',
                    },
                  ),
                );
                return;
              }

              // await chat.sendMessage('Assalomu alaykum! Bu birinchi xabar.');
              add(FcrmChatEvent.getMessages());
            },
        register: (userData, onSuccess, onError) async {
          if (state.status.isInProgress) {
            return;
          }
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await state.chat?.register(userData: userData);
          onSuccess?.call();
        },
        getMessages: (page) async {
          if (state.status.isInProgress) {
            return;
          }
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          final messages = await state.chat?.getMessages();
          emit(
            state.copyWith(
              messages: messages?.messages ?? [],
              status: FormzSubmissionStatus.success,
            ),
          );
        },
        sendMessage: (message, endpoint) async {
          final result = await state.chat?.sendMessage(
            message,
            endpoint: endpoint ?? state.defaultEndpoint,
          );
          print(result);
          // emit(state.copyWith());
        },
        sendImage: (imagePath, endpoint) {},
      );
    });
  }
}
