import 'package:flutter/material.dart';
import 'package:todo_app/components/bottom_sheet_components/divider_header.dart';
import 'package:todo_app/components/bottom_sheet_components/tf_note_description.dart';
import 'package:todo_app/components/bottom_sheet_components/tf_note_title.dart';

void BottomSheetView(BuildContext context) {
  late double width;
  late double height;
  width = MediaQuery.of(context).size.width;
  height = MediaQuery.of(context).size.height;

  showModalBottomSheet(
    context: context,
    builder: ((context) {
      return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        width: width,
        height: height * 0.35,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /**
               * Divider Header 
               */
              DividerHeader(),
              SizedBox(height: height * 0.01),

              /**
               * TextFieldNoteTitle 
              */
              TextFieldNoteTitle(),

              /**
               * TextFieldNoteDescription 
              */
              TextFieldNoteDescription(),
            ],
          ),
        ),
      );
    }),
  );
}
