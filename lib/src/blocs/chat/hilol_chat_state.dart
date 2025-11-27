part of 'hilol_chat_bloc.dart';

@freezed
sealed class HilolChatState with _$HilolChatState {
  const factory HilolChatState.initial({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default([]) List<ChatMessage> messages,
    FcrmChat? chat,
    String? defaultEndpoint,
    @Default(false) bool isREgistered,
  }) = _Initial;
}
