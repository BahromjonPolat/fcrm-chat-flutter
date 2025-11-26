import 'package:example/env.dart';
import 'package:fcrm_chat_flutter/fcrm_chat_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          create: (context) => FcrmChatBloc()
            ..add(
              FcrmChatEvent.initialize(
                baseUrl: Env.baseUrl,
                companyToken: Env.companyToken,
                appKey: Env.appKey,
                appSecret: Env.appSecret,
                socketUrl: Env.socketUrl,
                defaultEndpoint: 'Hilol (Example)',
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
          ).push(MaterialPageRoute(builder: (context) => FcrmChatPage())),
          child: Text('Chat'),
        ),
      ),
    );
  }
}
