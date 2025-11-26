/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 16:40:25

*/

import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget wrapExpandedOrNot({bool wrap = true}) =>
      wrap ? Expanded(child: this) : this;
}
