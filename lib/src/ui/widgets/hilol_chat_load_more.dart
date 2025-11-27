/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 13:42:31

*/

import 'package:flutter/cupertino.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HilolChatLoadMore extends StatelessWidget {
  final bool showLoading;
  final VoidCallback onVisible;
  const HilolChatLoadMore({
    super.key,
    required this.showLoading,
    required this.onVisible,
  });

  @override
  Widget build(BuildContext context) {
    if (!showLoading) {
      return const SizedBox();
    }
    return VisibilityDetector(
      key: const ValueKey('visibility'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 1.0) {
          onVisible();
        }
      },
      child: const CupertinoActivityIndicator(),
    );
  }
}
