import 'package:flutter/material.dart';

class TextFieldNoteDescription extends StatelessWidget {
  TextFieldNoteDescription({super.key});
  late double width;
  late double height;

  TextEditingController notedescriptionController = TextEditingController();

  String get getTextFieldNoteDescription => notedescriptionController.text;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: TextFormField(
        controller: notedescriptionController,
        maxLength: 100,
        validator: (value) {
          if (value == null || value.isEmpty) {
            print("its empty / you can't leave this field");
            return "please enter your note description";
          }
        },
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: width * 0.04),
            child: Image.asset(
              "assets/icons/product-description.png",
              width: width * 0.05,
            ),
          ),
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
