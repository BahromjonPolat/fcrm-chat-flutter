/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 14:43:02

*/

import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  bool get isDark => Theme.brightnessOf(this) == Brightness.dark;

  void pop<T>([T? result]) =>
      Navigator.of(this, rootNavigator: true).pop(result);
  Future<dynamic> push(Widget page) async => Navigator.of(
    this,
    rootNavigator: true,
  ).push(MaterialPageRoute(builder: (context) => page));

  Future<dynamic> pushReplacement(Widget page) async => Navigator.of(
    this,
    rootNavigator: true,
  ).pushReplacement(MaterialPageRoute(builder: (context) => page));
}
