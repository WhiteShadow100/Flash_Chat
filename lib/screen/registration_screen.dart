import 'package:flash_chat/helper/rounded_button.dart';
import 'package:flash_chat/helper/rounded_input_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {

  static const id = 'registration_screen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration Screen',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: 'logo',
                child: Image.asset(
                    'assets/flash_chat_icon.png',
                  height: 200.0,
                  width: 200.0,
                )
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundedInputField(
                hintText: 'Enter your email',
                onChange: (String value) {
                  setState(() {
                    email = value;
                  });
                },
            ),
            SizedBox(
              height: 15.0,
            ),
            RoundedInputField(
                hintText: 'Enter your password',
                onChange: (String value) {
                  setState(() {
                    password = value;
                  });
                },
            ),
            SizedBox(
              height: 30.0,
            ),
            RoundedButton(
              color:  Colors.blueAccent,
              label: 'Register',
              onPressed:  (){
                print('this is email -> ${email}');
                print('this is password -> ${password}');
              },
            ),
          ],
        ),
      )
    );
  }
}
