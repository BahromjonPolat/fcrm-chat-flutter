/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025

*/

part of 'hilol_chat_register_bloc.dart';

@freezed
sealed class HilolChatRegisterState with _$HilolChatRegisterState {
  const factory HilolChatRegisterState({
    required NameInput name,
    required EmailOrPhoneInput emailOrPhone,
    required bool isValid,
    required FormzSubmissionStatus status,
  }) = _HilolChatRegisterState;
}
