import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/notes_model.dart';

class DataBaseRepository {
  Future<void> setNotesData(NotesModel model) async {
    await FirebaseFirestore.instance.collection("Notes").add({
      "note_title": model.title,
      "creation_date": model.date,
      "note_content": model.content,
      "color_id": model.colorId,
    }).catchError((error) => print("Failed to Add New Note due to $error"));
  }
}
