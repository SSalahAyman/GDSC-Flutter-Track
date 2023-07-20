import 'package:flutter/material.dart';

class CharButton extends StatelessWidget {
  const CharButton({super.key, required this.char, required this.ontap});
  final String? char;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 9),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Color(0xff2d2f3b),
        ),
        child: Text(
          char!,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        onPressed: ontap!,
      ),
    );
  }
}
