import 'package:flutter/material.dart';
import 'package:todo_app/components/bottom_sheet_components/btn_save_note.dart';
import 'package:todo_app/components/bottom_sheet_components/divider_header.dart';
import 'package:todo_app/components/bottom_sheet_components/tf_note_description.dart';
import 'package:todo_app/components/bottom_sheet_components/tf_note_title.dart';

/**
 * when I put on the parameters of function that arguments is named parameters {} ,
 that may can be null so we must put required keyword to know user that is not nullable
 */
void BottomSheetView({
  required BuildContext context,
  required GlobalKey<FormState> addNoteFormState,
}) {
  late double width;
  late double height;

  width = MediaQuery.of(context).size.width;
  height = MediaQuery.of(context).size.height;

  TextFieldNoteTitle textFieldNoteTitle = TextFieldNoteTitle();
  TextFieldNoteDescription textFieldNoteDescription =
      TextFieldNoteDescription();

  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: ((context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          width: width,
          child: SingleChildScrollView(
            child: Form(
              key: addNoteFormState,
              child: Column(children: [
                SizedBox(
                  height: height * 0.01,
                ),
                /**
                   * Divider Header 
                   */
                DividerHeader(),
                SizedBox(height: height * 0.01),

                /**
                   * TextFieldNoteTitle 
                  */
                TextFieldNoteTitle(),
                SizedBox(height: height * 0.01),

                /**
                   * TextFieldNoteDescription 
                  */
                TextFieldNoteDescription(),
                SizedBox(
                  height: height * 0.02,
                ),

                /**
                   * progress button (save note)
                  */
                ButtonSaveNote(
                  noteTitle: textFieldNoteTitle.getTextFieldNoteTitle,
                  noteDescription:
                      textFieldNoteDescription.getTextFieldNoteDescription,
                  addNoteFormState: addNoteFormState,
                ),
                SizedBox(
                  height: height * 0.02,
                )
              ]),
            ),
          ),
        ),
      );
    }),
  );
}
