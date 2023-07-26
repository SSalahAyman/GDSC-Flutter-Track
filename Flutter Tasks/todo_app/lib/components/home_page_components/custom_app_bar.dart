import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.035, left: width * 0.07),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/check (1).png",
            width: width * 0.2,
          ),
          SizedBox(
            width: width * 0.1,
          ),
          const Text(
            "ToDayDo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
