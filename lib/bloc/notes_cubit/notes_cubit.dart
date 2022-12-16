import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task_3/model/notes_model.dart';
import 'package:flutter_task_3/repository/database_repository.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  saveNotesInFirebase(NotesModel model) async {
    DataBaseRepository().setNotesData(model);
  }

  fetchNotesFromFirebase() async {
    emit(NotesLodingState());

    try {
      await FirebaseFirestore.instance.collection("Notes").snapshots().listen((event) {
        emit(NotesDoneState(event.docs
            .map((data) => NotesModel.fromJson(data.data()))
            .toList()));
      });
    } catch (e) {
      print(e);
    }
  }
}
