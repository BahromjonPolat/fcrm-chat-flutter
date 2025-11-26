part of 'fcrm_chat_bloc.dart';

@freezed
class FcrmChatState with _$FcrmChatState {
  const factory FcrmChatState.initial({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default([]) List<ChatMessage> messages,
    FcrmChat? chat,
  }) = _Initial;
}
