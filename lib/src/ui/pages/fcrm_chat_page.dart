/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:fcrm_chat_flutter/fcrm_chat_flutter.dart';
import 'package:fcrm_chat_flutter/src/ui/widgets/fcrm_chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FcrmChatPage extends StatelessWidget {
  const FcrmChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FcrmChatBloc, FcrmChatState>(
      builder: (context, state) {
        return Scaffold(
          appBar: FcrmAppBar(chat: state.chat),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: state.messages.length,
                  padding: EdgeInsets.all(16),
                  separatorBuilder: (_, _) => SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final message = state.messages[index];
                    return FcrmChatBubble(message: message);
                  },
                ),
              ),

              FcrmChatInput(),
            ],
          ),
        );
      },
    );
  }
}
