import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});
  static late double width;
  static late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width,
          height: height * 0.25,
          child: Lottie.asset(
            "assets/animated_images/105639-signup.json",
          ),
        ),
        Divider(
          thickness: 2,
          endIndent: width * 0.13,
          indent: width * 0.13,
          color: Colors.grey,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.02),
            child: const Text(
              "Enter Your Details :",
              style: TextStyle(
                color: Color(0xff2a2f7e),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                // fontFamily: "pacifico",
              ),
            ),
          ),
        )
      ],
    );
  }
}
