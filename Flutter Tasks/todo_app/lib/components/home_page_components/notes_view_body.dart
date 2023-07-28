import 'package:flutter/material.dart';

import '../bottom_sheet_components/tf_note_title.dart';

class NotesViewBody extends StatelessWidget {
  NotesViewBody({super.key});

  TextFieldNoteTitle textFieldNoteTitle = new TextFieldNoteTitle();

  List<Widget> textNotes = [Text(textFieldNoteTitle.notetitleController.text)];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: textNotes,
    );
  }
}
