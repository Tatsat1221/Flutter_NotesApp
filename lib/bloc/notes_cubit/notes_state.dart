part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitialState extends NotesState {}

class NotesLodingState extends NotesState {}

class NotesDoneState extends NotesState {
  List<NotesModel>? notesModel;
  NotesDoneState(this.notesModel);
}

class NotesErrorState extends NotesState {}
