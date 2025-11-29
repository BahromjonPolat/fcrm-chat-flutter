/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 10:17:43

*/

import 'package:flutter/material.dart';
import 'package:hilol_chat_flutter/src/extensions/context_x.dart';
import 'package:hilol_chat_flutter/src/extensions/string_x.dart';
import 'package:hilol_chat_flutter/src/languages/strings.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_image.dart';

class HilolChatImageViewer extends StatelessWidget {
  final String imageUrl;
  const HilolChatImageViewer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        child: HilolChatImage(imageUrl: imageUrl),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(
          16,
          12,
          16,
          MediaQuery.paddingOf(context).bottom + 8,
        ),
        child: ElevatedButton(
          onPressed: context.pop,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          child: Text(Strings.general_close.tr()),
        ),
      ),
    );
  }
}
