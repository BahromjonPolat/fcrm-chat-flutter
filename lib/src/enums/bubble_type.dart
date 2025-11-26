/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 12:10:11

*/

enum BubbleType { sendBubble, receiverBubble }

extension BubbleTypeX on BubbleType {
  bool get isSendBubble => this == BubbleType.sendBubble;
  bool get isReceiveBubble => this == BubbleType.receiverBubble;
}
