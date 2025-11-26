/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:13:24

*/

import 'package:flutter/material.dart';

import 'fcrm_file_picker_button.dart';

class FcrmChatInput extends StatelessWidget {
  const FcrmChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        16,
        10,
        16,
        MediaQuery.paddingOf(context).bottom + 10,
      ),
      child: Row(
        crossAxisAlignment: .end,
        spacing: 8,
        children: [
          FcrmFilePickerButton(),
          Expanded(
            child: TextFormField(
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              cursorHeight: 18,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                fillColor: Theme.of(context).cardColor,
                filled: true,
                hintText: 'Message',
                constraints: BoxConstraints(maxHeight: 150, minHeight: 42),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: .none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
