import 'package:flutter/material.dart';
import 'package:flashChat/screens/welcome_screen.dart';
import 'package:flashChat/screens/chat_screen.dart';
import 'package:flashChat/screens/login_screen.dart';
import 'package:flashChat/screens/registration_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
//      initialRoute: 'welcome_screen',
//      routes:{
//        'welcome_screen': WelcomeScreen(),
//        'chat_screen': ChatScreen(),
//        'login_screen': LoginScreen(),
//        'registration_screen':RegistrationScreen(),
//
//      },

    );
  }
}