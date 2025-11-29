/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025 14:52:24

*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

Future<ui.Image> getImageDimensions(String imagePath) async {
  // For a network image, first get the bytes
  // final response = await http.get(Uri.parse(imageUrl));
  // final bytes = response.bodyBytes;

  // For a file from local storage or asset (example using asset)
  final ByteData data = await rootBundle.load(imagePath);
  final Uint8List bytes = data.buffer.asUint8List();

  final decodedImage = await decodeImageFromList(bytes);
  return decodedImage;
}
