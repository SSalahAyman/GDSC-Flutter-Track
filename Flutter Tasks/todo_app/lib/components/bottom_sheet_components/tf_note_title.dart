import 'package:flutter/material.dart';

class TextFieldNoteTitle extends StatelessWidget {
  TextFieldNoteTitle({super.key});
  late double width;
  late double height;

  TextEditingController notetitleController = TextEditingController();

  String get getTextFieldNoteTitle => notetitleController.text;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: TextFormField(
        controller: notetitleController,
        maxLength: 20,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter your note title";
          }
        },
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: width * 0.034),
            child: Image.asset(
              "assets/icons/tag.png",
              width: width * 0.05,
            ),
          ),
          hintText: "enter your note title",
          label: const Text(
            "Note Title",
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
