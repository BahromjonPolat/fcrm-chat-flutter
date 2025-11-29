/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 09:20:08

*/

import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';

extension MessageX on ChatMessage {
  bool get isImage => metadata?['is_image'] == true;
  bool get isSent => id > 0;
  bool get isUserMessage => type == MessageType.user;
}
