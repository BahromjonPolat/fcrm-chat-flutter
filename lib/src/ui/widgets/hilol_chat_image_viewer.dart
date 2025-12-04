/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 10:17:43

*/

import 'package:flutter/material.dart';
import 'package:hilol_chat_flutter/src/extensions/context_x.dart';
import 'package:hilol_chat_flutter/src/extensions/string_x.dart';
import 'package:hilol_chat_flutter/src/languages/strings.dart';
import 'package:hilol_chat_flutter/src/models/image_meta.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_image.dart';

import 'hilol_chat_elevated_button.dart';

class HilolChatImageViewer extends StatelessWidget {
  final String imageUrl;
  final ImageMeta imageMeta;
  const HilolChatImageViewer({
    super.key,
    required this.imageUrl,
    required this.imageMeta,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        child: HilolChatImage(imageUrl: imageUrl, imageMeta: imageMeta),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(
          16,
          12,
          16,
          MediaQuery.paddingOf(context).bottom + 8,
        ),
        child: HilolChatElevatedButton(
          onPressed: context.pop,
          text: Strings.general_close.tr(),
        ),
      ),
    );
  }
}
