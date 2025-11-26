/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:30:13

*/

import 'package:flutter/material.dart';

class FcrmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FcrmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(children: [Text('Hilol Support'), Text('Onlayn')]),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.phone_in_talk))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
