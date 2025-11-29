/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 09:21:57

*/

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
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
    return AspectRatio(
      key: ValueKey(imageMeta.filePath),
      aspectRatio: imageMeta.aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(8),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          // fit: BoxFit.cover,
          placeholder: (context, url) => imageMeta.filePath.isNotEmpty
              ? HilolFileImage(
                  imageMeta: imageMeta,
                  key: ValueKey(imageMeta.filePath),
                )
              : const Icon(Icons.image),
          errorWidget: (context, url, error) => imageMeta.filePath.isNotEmpty
              ? HilolFileImage(
                  imageMeta: imageMeta,
                  key: ValueKey(imageMeta.filePath),
                )
              : const Icon(Icons.error),
        ),
      ),
    );
  }
}

class HilolFileImage extends StatelessWidget {
  final ImageMeta imageMeta;
  const HilolFileImage({super.key, required this.imageMeta});

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File(imageMeta.filePath),
      width: imageMeta.width.toDouble(),
      height: imageMeta.height.toDouble(),
      // fit: BoxFit.cover,
    );
  }
}
