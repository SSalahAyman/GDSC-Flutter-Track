import 'package:flutter/material.dart';
import 'package:signupscreen/screens/signup_page.dart';

void main() {
  runApp(SignupScreen());
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}
