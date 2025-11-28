/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:58:11

*/

import 'package:hilol_chat_flutter/src/extensions/context_x.dart';
import 'package:hilol_chat_flutter/src/extensions/widget_x.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_image.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_image_viewer.dart';
import 'package:hilol_chat_flutter/src/utils/date_utils.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:flutter/material.dart';

import '../../enums/bubble_type.dart';
import 'hilol_chat_sender_avatar.dart';

class HilolChatBubble extends StatelessWidget {
  final CustomClipper? clipper;
  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final Color? backGroundColor;
  final Color? shadowColor;
  final Alignment? alignment;
  final EdgeInsetsGeometry? padding;
  final ChatMessage message;

  const HilolChatBubble({
    super.key,
    this.clipper,
    required this.message,
    this.margin,
    this.elevation,
    this.backGroundColor,
    this.shadowColor,
    this.alignment,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final isSendBubble = message.type == MessageType.user;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: isSendBubble
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        if (!isSendBubble) ...{
          const HilolChatSenderAvatar(
            imageUrl:
                'https://cdn.pixabay.com/photo/2013/07/12/12/40/help-146073_1280.png',
            isOnline: true,
          ),
        },

        GestureDetector(
          onTap: message.isImage
              ? () {
                  context.push(HilolChatImageViewer(imageUrl: message.content));
                }
              : null,
          child: Container(
            margin: EdgeInsets.only(
              left: isSendBubble ? 56 : 0,
              right: isSendBubble ? 0 : 56,
              bottom: isSendBubble ? 0 : 16,
            ),
            child: PhysicalShape(
              clipper: ChatBubbleClipper(
                type: isSendBubble
                    ? BubbleType.sendBubble
                    : BubbleType.receiverBubble,
              ),
              elevation: elevation ?? 2,
              color: isSendBubble
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).cardColor,
              shadowColor: shadowColor ?? Colors.grey.shade200,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  right: isSendBubble ? 16 : 8,
                  left: isSendBubble ? 8 : 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    message.isImage
                        ? HilolChatImage(imageUrl: message.content)
                        : Text(
                            message.content,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: isSendBubble ? Colors.white : null,
                            ),
                          ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 7,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (isSendBubble) ...{
                          Text(
                            AppDateUtils.formatDate(
                              message.createdAt.toLocal(),
                              pattern: 'hh:mm',
                            ),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),

                          const Icon(
                            Icons.done_all,
                            color: Colors.white,
                            size: 20,
                          ),
                        } else ...{
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '${message.senderName} / '),
                                TextSpan(
                                  text: AppDateUtils.formatDate(
                                    message.createdAt.toLocal(),
                                    pattern: 'hh:mm',
                                  ),
                                ),
                              ],
                            ),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        },
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ).wrapExpandedOrNot(wrap: message.content.length > 40),
      ],
    );
  }
}

class ChatBubbleClipper extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;
  final double nipSize;

  ChatBubbleClipper({this.type, this.radius = 15, this.nipSize = 7});

  @override
  Path getClip(Size size) {
    final path = Path();

    if (type == BubbleType.sendBubble) {
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius - nipSize, 0);
      path.arcToPoint(
        Offset(size.width - nipSize, radius),
        radius: Radius.circular(radius),
      );

      path.lineTo(size.width - nipSize, size.height - nipSize);

      path.arcToPoint(
        Offset(size.width, size.height),
        radius: Radius.circular(nipSize),
        clockwise: false,
      );

      path.arcToPoint(
        Offset(size.width - 2 * nipSize, size.height - nipSize),
        radius: Radius.circular(2 * nipSize),
      );

      path.arcToPoint(
        Offset(size.width - 4 * nipSize, size.height),
        radius: Radius.circular(2 * nipSize),
      );

      path.lineTo(radius, size.height);
      path.arcToPoint(
        Offset(0, size.height - radius),
        radius: Radius.circular(radius),
      );
      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(
        Offset(size.width, radius),
        radius: Radius.circular(radius),
      );

      path.lineTo(size.width, size.height - radius);

      path.arcToPoint(
        Offset(size.width - radius, size.height),
        radius: Radius.circular(radius),
      );

      path.lineTo(4 * nipSize, size.height);
      path.arcToPoint(
        Offset(2 * nipSize, size.height - nipSize),
        radius: Radius.circular(2 * nipSize),
      );

      path.arcToPoint(
        Offset(0, size.height),
        radius: Radius.circular(2 * nipSize),
      );

      path.arcToPoint(
        Offset(nipSize, size.height - nipSize),
        radius: Radius.circular(nipSize),
        clockwise: false,
      );

      path.lineTo(nipSize, radius);
      path.arcToPoint(
        Offset(radius + nipSize, 0),
        radius: Radius.circular(radius),
      );
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
