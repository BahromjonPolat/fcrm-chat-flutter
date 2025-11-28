import 'package:example/env.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HilolChatBloc()
            ..add(
              HilolChatEvent.initialize(
                config: HilolChatConfig(
                  baseUrl: Env.baseUrl,
                  companyToken: Env.companyToken,
                  appKey: Env.appKey,
                  appSecret: Env.appSecret,
                  socketUrl: Env.socketUrl,
                  enableLogging: kDebugMode,
                  defaultEndpoint: 'Chat Example',
                ),
                userData: HilolChatRegisterModel(
                  name: 'Bahromjon',
                  email: 'bahromjon@gmail.com',
                  phone: '+998901234567',
                ),
              ),
            ),
          child: Container(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          cardColor: Colors.white,
          appBarTheme: AppBarThemeData(
            centerTitle: true,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
          ),
          primaryColor: Color(0xFF0085FF),
          // primaryColor: const Color.fromARGB(255, 52, 148, 55),
          scaffoldBackgroundColor: Color(0xFFF1F3F3),
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => HilolChatPage())),
          child: Text('Chat'),
        ),
      ),
    );
  }
}
