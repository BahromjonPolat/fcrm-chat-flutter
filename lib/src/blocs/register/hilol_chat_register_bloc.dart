/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025

*/

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hilol_chat_flutter/src/inputs/email_or_phone_input.dart';
import 'package:hilol_chat_flutter/src/inputs/name_input.dart';

part 'hilol_chat_register_event.dart';
part 'hilol_chat_register_state.dart';
part 'hilol_chat_register_bloc.freezed.dart';

class HilolChatRegisterBloc
    extends Bloc<HilolChatRegisterEvent, HilolChatRegisterState> {
  HilolChatRegisterBloc()
      : super(
          const HilolChatRegisterState(
            name: NameInput.pure(),
            emailOrPhone: EmailOrPhoneInput.pure(),
            isValid: false,
            status: FormzSubmissionStatus.initial,
          ),
        ) {
    on<HilolChatRegisterEvent>((event, emit) {
      event.when(
        nameChanged: (name) {
          final nameInput = NameInput.dirty(name);
          emit(
            state.copyWith(
              name: nameInput,
              isValid: Formz.validate([nameInput, state.emailOrPhone]),
            ),
          );
        },
        emailOrPhoneChanged: (emailOrPhone) {
          final emailOrPhoneInput = EmailOrPhoneInput.dirty(emailOrPhone);
          emit(
            state.copyWith(
              emailOrPhone: emailOrPhoneInput,
              isValid: Formz.validate([state.name, emailOrPhoneInput]),
            ),
          );
        },
        submit: () {
          if (!state.isValid) {
            emit(
              state.copyWith(
                name: NameInput.dirty(state.name.value),
                emailOrPhone: EmailOrPhoneInput.dirty(state.emailOrPhone.value),
                isValid: false,
              ),
            );
            return;
          }

          emit(state.copyWith(status: FormzSubmissionStatus.success));
        },
      );
    });
  }
}
