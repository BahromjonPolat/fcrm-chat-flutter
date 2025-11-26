/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:13:24

*/

import 'package:fcrm_chat_flutter/fcrm_chat_flutter.dart';
import 'package:fcrm_chat_flutter/src/constants/fcrm_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_flutter/svg_flutter.dart';

import 'fcrm_file_picker_button.dart';

class FcrmChatInput extends StatefulWidget {
  const FcrmChatInput({super.key});

  @override
  State<FcrmChatInput> createState() => _FcrmChatInputState();
}

class _FcrmChatInputState extends State<FcrmChatInput> {
  final controller = TextEditingController();
  bool showButton = false;

  void listener() {
    final message = controller.text.trim();
    final isShow = message.isNotEmpty;
    if (isShow == showButton) {
      return;
    }
    setState(() => showButton = isShow);
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(listener);
  }

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
              controller: controller,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              cursorHeight: 18,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),

              decoration: InputDecoration(
                suffixIcon: showButton
                    ? IconButton(
                        onPressed: () {
                          final message = controller.text.trim();
                          if (message.isEmpty) {
                            return;
                          }
                          context.read<FcrmChatBloc>().add(
                            FcrmChatEvent.sendMessage(message),
                          );
                          controller.clear();
                        },
                        icon: SvgPicture.asset(
                          FcrmIcons.send,
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).primaryColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      )
                    : null,
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

  @override
  void dispose() {
    controller.removeListener(listener);
    controller.dispose();
    super.dispose();
  }
}
