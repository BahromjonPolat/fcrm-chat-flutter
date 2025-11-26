/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:30:13

*/

import 'package:fcrm_chat_flutter/src/constants/fcrm_icons.dart';
import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class FcrmAppBar extends StatelessWidget implements PreferredSizeWidget {
  final FcrmChat? chat;
  const FcrmAppBar({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
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
          onPressed: () {},
          icon: SvgPicture.asset(
            FcrmIcons.call,
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
