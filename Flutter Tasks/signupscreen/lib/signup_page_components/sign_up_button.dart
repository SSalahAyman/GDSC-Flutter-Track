import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  SignUpButton({super.key});
  static late double width;
  static late double height;
  TextEditingController EmailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.68, right: width * 0.02),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(340, 43),
            primary: Color(0xff2a2f7e),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)) ,),
        onPressed: () {
          if()
        },
        child: Row(
          children: [
            Text("Sign now"),
            SizedBox(
              width: width * 0.02,
            ),
            Icon(Icons.arrow_right_alt_outlined),
          ],
        ),
      ),
    );
  }
}
