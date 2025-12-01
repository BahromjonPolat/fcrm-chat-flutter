/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:fcrm_chat_sdk/fcrm_chat_sdk.dart';
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hilol_chat_flutter/src/ui/widgets/hilol_chat_load_more.dart';
import 'package:hilol_chat_flutter/src/utils/date_utils.dart';
import 'package:hilol_chat_flutter/src/utils/logger.dart';

import '../widgets/hilol_chat_date_separator.dart';

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
            final lastMessage = state.messages.isNotEmpty
                ? state.messages.last
                : null;
            final isMyMessage = lastMessage?.type == MessageType.user;

            if (500 > distance || isMyMessage) {
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
                        separatorBuilder: (_, index) {
                          final message = state.messages[index];

                          final nextMessageIndex = index + 1;
                          if (nextMessageIndex < state.messages.length) {
                            final nextMessage =
                                state.messages[nextMessageIndex];
                            final nextDate = nextMessage.createdAt;
                            if (!AppDateUtils.isSameDay(
                              message.createdAt,
                              nextDate,
                            )) {
                              return Column(
                                children: [
                                  const SizedBox(height: 16),
                                  Center(
                                    child: HilolChatDateSeparator(
                                      dateTime: nextDate,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              );
                            }
                          }

                          return const SizedBox(height: 16);
                        },
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
