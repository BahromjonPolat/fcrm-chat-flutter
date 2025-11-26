part of 'fcrm_chat_bloc.dart';

@freezed
class FcrmChatEvent with _$FcrmChatEvent {
  const factory FcrmChatEvent.initialize({
    required String baseUrl,
    required String companyToken,
    required String appKey,
    required String appSecret,
    required String socketUrl,
    @Default(true) bool enableLogging,
  }) = _Initialize;

  const factory FcrmChatEvent.getMessages({@Default(1) int page}) =
      _GetMessages;

  const factory FcrmChatEvent.register({
    required Map<String, dynamic> userData,
    void Function()? onSuccess,
    void Function(String error)? onError,
  }) = _Register;
}
