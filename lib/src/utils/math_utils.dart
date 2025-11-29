/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025 16:07:02

*/

import 'dart:math' as math;

String formatBytes(int bytes, {int decimals = 2, bool showSuffix = true}) {
  if (bytes <= 0) return '0${showSuffix ? 'B' : ''}';
  const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
  final i = (math.log(bytes) / math.log(1024)).floor();
  final result = (bytes / math.pow(1024, i));
  return '${result.toStringAsFixed(decimals)}${showSuffix ? suffixes[i] : ''}';
}
