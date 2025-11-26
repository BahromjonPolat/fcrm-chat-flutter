/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 14:43:02

*/

import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  bool get isDark => Theme.brightnessOf(this) == Brightness.dark;
}
