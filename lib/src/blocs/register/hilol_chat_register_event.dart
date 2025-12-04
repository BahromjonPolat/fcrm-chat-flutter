/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025

*/

part of 'hilol_chat_register_bloc.dart';

@freezed
class HilolChatRegisterEvent with _$HilolChatRegisterEvent {
  const factory HilolChatRegisterEvent.nameChanged(String name) = _NameChanged;
  const factory HilolChatRegisterEvent.emailOrPhoneChanged(
    String emailOrPhone,
  ) = _EmailOrPhoneChanged;
  const factory HilolChatRegisterEvent.submit({
    required void Function() onSuccess,
    required void Function(String errorMessage) onError,
  }) = _Submit;
}
