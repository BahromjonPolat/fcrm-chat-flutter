/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025 14:20:27

*/

import 'package:equatable/equatable.dart';

class ImageMeta extends Equatable {
  const ImageMeta({
    required this.isImage,
    required this.originalName,
    required this.filePath,
    required this.size,
    required this.width,
    required this.height,
  });

  final String originalName;
  final String filePath;
  final bool isImage;
  final int size;
  final int width;
  final int height;

  ImageMeta copyWith({
    bool? isImage,
    String? originalName,
    String? filePath,
    int? size,
    int? width,
    int? height,
  }) {
    return ImageMeta(
      isImage: isImage ?? this.isImage,
      originalName: originalName ?? this.originalName,
      filePath: filePath ?? this.filePath,
      size: size ?? this.size,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  factory ImageMeta.fromJson(Map<String, dynamic> json) {
    return ImageMeta(
      filePath: json['file_path'] ?? '',
      isImage: json['is_image'] ?? false,
      originalName: json['original_name'] ?? '',
      size: json['size'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    'is_image': isImage,
    'original_name': originalName,
    'file_path': filePath,
    'size': size,
    'width': width,
    'height': height,
  };

  double get aspectRatio => width / height;

  @override
  List<Object?> get props => [
    isImage,
    originalName,
    size,
    width,
    height,
    filePath,
  ];
}
