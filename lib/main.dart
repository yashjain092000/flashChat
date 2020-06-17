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

      //home: WelcomeScreen(),
      initialRoute:  WelcomeScreen.id,
      routes:{
        WelcomeScreen.id:(context)=> WelcomeScreen(),
        ChatScreen.id: (context)=>ChatScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id :(context)=>RegistrationScreen(),

      },
//
    );
  }
}