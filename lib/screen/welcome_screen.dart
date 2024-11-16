import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/helper/rounded_button.dart';
import 'package:flash_chat/screen/login_screen.dart';
import 'package:flash_chat/screen/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {

  static const id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin  {

  // animation conroller
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // initializing animation controller

    _controller = new AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
    );

    // starting animation controller
    _controller.forward();

    // tracking controller value
    _controller.addListener((){
      print(_controller.value);
    });

  }

  @override
  void dispose() {
    // removing controller, so that it does not occupy too much resources
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/flash_chat_icon.png',
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                          color: Colors.grey
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],

                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 90),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundedButton(
                color: Colors.blue,
                label: 'Log In',
                onPressed: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                }
            ),
            SizedBox(
              height: 25.0,
            ),
            RoundedButton(
              color: Colors.blueAccent,
              label: 'Register',
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              }
            )
          ],
        ),
      ),
    );
  }
}
