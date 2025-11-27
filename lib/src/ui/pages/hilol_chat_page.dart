/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HilolChatPage extends StatelessWidget {
  const HilolChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HilolChatBloc, HilolChatState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HilolChatAppBar(chat: state.chat),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: state.messages.length,
                  padding: const EdgeInsets.all(16),
                  separatorBuilder: (_, _) => const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final message = state.messages[index];
                    return HilolChatBubble(message: message);
                  },
                ),
              ),

              const HilolChatInput(),
            ],
          ),
        );
      },
    );
  }
}
