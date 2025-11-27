/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:13:24

*/

import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:hilol_chat_flutter/src/constants/hilol_chat_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_flutter/svg_flutter.dart';

import 'hilol_chat_file_picker_button.dart';

class HilolChatInput extends StatefulWidget {
  const HilolChatInput({super.key});

  @override
  State<HilolChatInput> createState() => _HilolChatInputState();
}

class _HilolChatInputState extends State<HilolChatInput> {
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
          const HilolChatFilePickerButton(),
          Expanded(
            child: TextFormField(
              controller: controller,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              cursorHeight: 18,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),

              decoration: InputDecoration(
                suffixIcon: showButton
                    ? Container(
                        width: 32,
                        alignment: .bottomRight,
                        child: IconButton(
                          onPressed: () {
                            final message = controller.text.trim();
                            if (message.isEmpty) {
                              return;
                            }
                            context.read<HilolChatBloc>().add(
                              HilolChatEvent.sendMessage(message),
                            );
                            controller.clear();
                          },
                          icon: SvgPicture.asset(
                            HilolChatIcons.send,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).primaryColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      )
                    : null,
                contentPadding: const EdgeInsets.all(12),
                fillColor: Theme.of(context).cardColor,
                filled: true,
                hintText: 'Message',
                constraints: const BoxConstraints(
                  maxHeight: 150,
                  minHeight: 42,
                ),
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
