import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>  with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState(){
    super.initState();
    controller=AnimationController(
      duration: Duration(seconds: 1), vsync: this
    );

    //animation=CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation=ColorTween(begin:Colors.black45,end:Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
    });
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag:'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 500),
                  isRepeatingAnimation: false,
                 text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(title:'Log in',colour:Colors.lightBlueAccent,onPressed:() {
              Navigator.pushNamed(context, LoginScreen.id);
              //Go to login screen.
            },),
          RoundedButton(onPressed:() {
            Navigator.pushNamed(context, RegistrationScreen.id);
            //Go to registration screen.
          },title:'Register',colour:Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title,this.colour, @required this.onPressed});

  final String title;
  final Color colour;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,//Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}