import 'package:flutter/material.dart';

class PasswordTF extends StatelessWidget {
  const PasswordTF({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.01, right: width * 0.75),
          child: const Text(
            "Password",
            style: TextStyle(
                color: Color(0xff2a2f7e),
                fontWeight: FontWeight.w500,
                fontSize: 17),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: width * 0.03, left: width * 0.03, bottom: height * 0.015),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your Email";
              }
            },
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.remove_red_eye,
                color: Color(0xff2a2f7e),
                size: 30,
              ),
              prefixIcon: const Icon(
                Icons.security_rounded,
                color: Color(0xff2a2f7e),
                size: 30,
              ),
              hintText: "enter your Password",
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xff2a2f7e), width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: Color(0xff2a2f7e), width: 2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
