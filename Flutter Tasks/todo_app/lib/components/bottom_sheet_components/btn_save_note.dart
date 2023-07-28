import 'package:flutter/material.dart';
import 'package:todo_app/components/home_page_components/notes_view_body.dart';

class ButtonSaveNote extends StatelessWidget {
  ButtonSaveNote({
    super.key,
    required this.addNoteFormState,
    this.noteTitle,
    this.noteDescription,
  });

  String? noteTitle;
  String? noteDescription;
  GlobalKey<FormState> addNoteFormState;
  NotesViewBody notesViewBody = NotesViewBody();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFF8551),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        if (addNoteFormState.currentState!.validate()) {
          void addNote(String noteTitle, String noteDescription) {
            final note = Note(
              noteTitle: noteTitle,
              noteDescription: noteDescription,
            );
            notesList.add(note);
          }
        } else {
          print("Validation failed");
        }
      },
      icon: const Icon(Icons.add),
      label: const Text("Add Note"),
    );
  }
}
