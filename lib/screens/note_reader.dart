import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_3/model/notes_model.dart';
import 'package:flutter_task_3/style/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.notesModel, {Key? key}) : super(key: key);
  late NotesModel notesModel;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.notesModel.colorId;
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.notesModel.title,
              style: AppStyle.mainTitle,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.notesModel.date,
              style: AppStyle.dateTitle,
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              widget.notesModel.content,
              style: AppStyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
