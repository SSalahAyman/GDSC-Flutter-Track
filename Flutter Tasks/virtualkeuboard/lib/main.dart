import 'package:flutter/material.dart';
import 'package:virtualkeuboard/screens/main_screen.dart';

void main() {
  runApp(VirtualKeyboard());
}

class VirtualKeyboard extends StatelessWidget {
  const VirtualKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "virtualkeyboard",
      home: MainScreen(),
    );
  }
}
