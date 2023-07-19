import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff25292f),
        appBar: AppBar(
          title: Text("Custom Keyboard"),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xff25292f),
              width: width,
              height: height * 0.5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(0xff2d333d),
              ),
              width: width,
              height: height * 0.4051,
            ),
          ],
        ),
      ),
    );
  }
}
