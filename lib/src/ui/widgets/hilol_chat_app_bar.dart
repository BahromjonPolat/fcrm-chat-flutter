/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:30:13

*/

import 'package:hilol_chat_flutter/src/constants/hilol_chat_icons.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:flutter/material.dart';
import 'package:hilol_chat_flutter/src/utils/logger.dart';
import 'package:svg_flutter/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HilolChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final FcrmChat? chat;
  const HilolChatAppBar({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          const Text(
            'Hilol Support',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            chat?.isActive == true ? 'Online' : 'Offline',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () async {
            try {
              await launchUrlString(
                'tel:+998712175999',
                mode: LaunchMode.externalApplication,
              );
            } catch (e) {
              Log.e(e, fileName: 'hilol_chat_app_bar');
            }
          },
          icon: SvgPicture.asset(
            HilolChatIcons.call,
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color ?? Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
