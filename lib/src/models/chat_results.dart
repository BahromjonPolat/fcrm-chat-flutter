/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025

*/

import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';

class MessagesResult {
  final List<ChatMessage> messages;
  final bool hasMore;
  final int page;

  const MessagesResult({
    required this.messages,
    required this.hasMore,
    required this.page,
  });
}

class ChatInitResult {
  final FcrmChat chat;
  final bool isRegistered;

  const ChatInitResult({
    required this.chat,
    required this.isRegistered,
  });
}

class MessageSendResult {
  final ChatMessage message;
  final DateTime sentAt;

  const MessageSendResult({
    required this.message,
    required this.sentAt,
  });
}

class ImageSendResult {
  final ChatMessage message;
  final DateTime sentAt;
  final String? imageUrl;

  const ImageSendResult({
    required this.message,
    required this.sentAt,
    this.imageUrl,
  });
}

class RegisterResult {
  final bool success;
  final DateTime registeredAt;

  const RegisterResult({
    required this.success,
    required this.registeredAt,
  });
}
