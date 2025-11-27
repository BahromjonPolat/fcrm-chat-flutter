/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HilolChatPage extends StatefulWidget {
  const HilolChatPage({super.key});

  @override
  State<HilolChatPage> createState() => _HilolChatPageState();
}

class _HilolChatPageState extends State<HilolChatPage> {
  final scrollController = ScrollController(initialScrollOffset: 100000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HilolChatBloc, HilolChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: HilolChatAppBar(chat: state.chat),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
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

  // void _scrollToBottom() {
  //   if (scrollController.hasClients) {
  //     scrollController.jumpTo(scrollController.position.maxScrollExtent);
  //   }
  // }
}
