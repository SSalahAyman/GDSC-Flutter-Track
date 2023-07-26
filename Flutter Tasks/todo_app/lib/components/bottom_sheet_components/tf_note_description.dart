import 'package:flutter/material.dart';

class TextFieldNoteDescription extends StatelessWidget {
  TextFieldNoteDescription({super.key});
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: TextFormField(
        maxLength: 20,
        decoration: InputDecoration(
          hintText: "enter your note Description",
          label: const Text(
            "Note Description",
            style: TextStyle(
              color: Color(0xffFF8551),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xffFF8551),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
        ),
      ),
    );
  }
}
