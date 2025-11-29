/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 09:21:57

*/

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilol_chat_flutter/src/models/image_meta.dart';

class HilolChatImage extends StatelessWidget {
  final String imageUrl;
  final ImageMeta imageMeta;
  const HilolChatImage({
    super.key,
    required this.imageUrl,
    required this.imageMeta,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: AspectRatio(
        aspectRatio: imageMeta.aspectRatio,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => imageMeta.filePath.isNotEmpty
              ? Image.file(File(imageMeta.filePath), fit: BoxFit.cover)
              : const Center(child: CupertinoActivityIndicator()),
          errorWidget: (context, url, error) => imageMeta.filePath.isNotEmpty
              ? Image.file(File(imageMeta.filePath), fit: BoxFit.cover)
              : const Icon(Icons.error),
        ),
      ),
    );
  }
}
