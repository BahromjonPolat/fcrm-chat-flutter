/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025 18:55:21

*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/hilol_chat_colors.dart';

class HilolChatInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool readOnly;
  final String title;
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final TextCapitalization textCapitalization;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final void Function()? onCompeted;
  final bool obscureText;
  final AutovalidateMode? autovalidateMode;
  final String? errorText;
  final double? height;
  final bool autoFocus;
  final Color? fillColor;
  final bool isRequired;
  final Color? focusedBorderColor;
  final Widget? prefixIcon;
  final String? initialValue;
  final String? forceErrorText;
  final int? maxLength;

  const HilolChatInputField({
    super.key,
    this.controller,
    this.hintText,
    this.readOnly = false,
    this.suffixIcon,
    this.title = '',
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.inputFormatters,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.obscureText = false,
    this.onTap,
    this.onCompeted,
    this.autovalidateMode,
    this.errorText,
    this.height,
    this.fillColor,
    this.autoFocus = false,
    this.isRequired = false,
    this.focusedBorderColor,
    this.prefixIcon,
    this.initialValue,
    this.forceErrorText,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty) ...{
          Text.rich(
            TextSpan(
              text: title,
              children: [
                if (isRequired)
                  const TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
              ],
            ),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
        },
        SizedBox(
          height: height,
          child: TextFormField(
            initialValue: initialValue,
            obscureText: obscureText,
            controller: controller,
            readOnly: readOnly,
            forceErrorText: forceErrorText,
            validator: validator,
            maxLength: maxLength,
            autofocus: autoFocus,
            textCapitalization: textCapitalization,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            autofillHints: autofillHints,
            inputFormatters: inputFormatters,
            autovalidateMode: autovalidateMode,
            maxLines: maxLines,
            onTap: onTap,
            onChanged: onChanged,
            onEditingComplete: onCompeted,
            obscuringCharacter: '●',
            errorBuilder: (context, errorText) => errorText.isEmpty
                ? const SizedBox()
                : Text(
                    errorText,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.red),
                  ),
            onTapUpOutside: (event) {
              FocusScope.of(
                context,
              ).unfocus(disposition: UnfocusDisposition.previouslyFocusedChild);
              SystemChannels.textInput.invokeMethod('TextInput.hide');
            },

            style: Theme.of(context).textTheme.labelMedium,
            decoration: InputDecoration(
              hintText: hintText,
              errorText: errorText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              filled: true,
              fillColor: fillColor ?? Theme.of(context).cardColor,
              suffixIconColor: Theme.of(context).iconTheme.color,
              errorStyle: const TextStyle(height: 0),
              // focusedBorder: OutlineInputBorder(
              //   borderSide:
              //       Theme.of(context)
              //           .inputDecorationTheme
              //           .focusedBorder
              //           ?.borderSide
              //           .copyWith(color: focusedBorderColor) ??
              //       BorderSide.none,
              // ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: maxLines > 1 ? 12 : 0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: HilolChatColors.darkGrey.withValues(alpha: .16),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: HilolChatColors.darkGrey.withValues(alpha: .16),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: HilolChatColors.darkGrey.withValues(alpha: .16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
