/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_load_more.dart';
import 'package:hilol_chat_flutter/src/utils/logger.dart';

class HilolChatPage extends StatefulWidget {
  const HilolChatPage({super.key});

  @override
  State<HilolChatPage> createState() => _HilolChatPageState();
}

class _HilolChatPageState extends State<HilolChatPage> {
  final scrollController = ScrollController(initialScrollOffset: 100000);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: BlocConsumer<HilolChatBloc, HilolChatState>(
        listenWhen: (previous, current) =>
            previous.messages.length != current.messages.length,
        listener: (context, state) async {
          try {
            await Future.delayed(const Duration(milliseconds: 100));
            final max = scrollController.position.maxScrollExtent;
            final offset = scrollController.offset;
            final distance = max - offset;

            if (200 > distance) {
              scrollController.animateTo(
                max,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
            }
          } catch (e) {
            Log.e(e, fileName: 'hilol_chat_page');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: HilolChatAppBar(chat: state.chat),
            body: Column(
              children: [
                Expanded(
                  child: Builder(
                    builder: (context) {
                      if (state.status.isInProgress && state.messages.isEmpty) {
                        return const HilolChatShimmer();
                      }

                      return ListView.separated(
                        controller: scrollController,
                        itemCount: state.messages.length + 1,
                        padding: const EdgeInsets.all(16),
                        separatorBuilder: (_, _) => const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return HilolChatLoadMore(
                              showLoading: state.hasMoreMessages,
                              onVisible: () {
                                context.read<HilolChatBloc>().add(
                                  HilolChatEvent.getMessages(
                                    page: state.currentPage + 1,
                                  ),
                                );
                              },
                            );
                          }
                          final realIndex = index - 1;
                          final message = state.messages[realIndex];
                          return HilolChatBubble(message: message);
                        },
                      );
                    },
                  ),
                ),
                const HilolChatInput(),
              ],
            ),
          );
        },
      ),
    );
  }

  // void _scrollToBottom() {
  //   if (scrollController.hasClients) {
  //     scrollController.jumpTo(scrollController.position.maxScrollExtent);
  //   }
  // }
}
