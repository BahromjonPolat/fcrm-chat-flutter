/*

  Created by: Bakhromjon Polat
  Created on: Nov 28 2025 09:35:56

*/

import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';

class HilolChatConfig extends ChatConfig {
  final String? defaultEndpoint;
  HilolChatConfig({
    required super.baseUrl,
    required super.companyToken,
    required super.appKey,
    required super.appSecret,
    super.socketUrl,
    super.enableLogging,
    super.connectionTimeout,
    this.defaultEndpoint,
  });
}
