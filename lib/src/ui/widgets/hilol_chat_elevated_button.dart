/*

  Created by: Bakhromjon Polat
  Created on: Dec 04 2025 14:27:23

*/

import 'package:flutter/material.dart';

class HilolChatElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final bool isEnabled;
  const HilolChatElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.isLoading = false,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading || !isEnabled ? null : onPressed,
      child: isLoading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
                strokeWidth: 2,
              ),
            )
          : Text(text),
    );
  }
}
