/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 11:26:43

*/

import 'package:fcrm_chat_flutter/src/widgets/fcrm_app_bar.dart';
import 'package:flutter/material.dart';

class FcrmChatPage extends StatefulWidget {
  const FcrmChatPage({super.key});

  @override
  State<FcrmChatPage> createState() => _FcrmChatPageState();
}

class _FcrmChatPageState extends State<FcrmChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: FcrmAppBar());
  }
}
