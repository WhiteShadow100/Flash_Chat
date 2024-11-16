import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  static const id = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen',
          textAlign: TextAlign.right,
        ),
      ),
      body: Text(
        'Login Screen'
      ),
    );
  }
}
