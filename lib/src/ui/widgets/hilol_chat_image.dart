/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 09:21:57

*/

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HilolChatImage extends StatelessWidget {
  final String imageUrl;
  const HilolChatImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: CachedNetworkImage(imageUrl: imageUrl),
    );
  }
}
