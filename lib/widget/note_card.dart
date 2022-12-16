import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_3/model/notes_model.dart';
import 'package:flutter_task_3/style/app_style.dart';

Widget noteCard(Function()? onTap, NotesModel model) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[model.colorId],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.title,
            style: AppStyle.mainTitle,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            model.date,
            style: AppStyle.dateTitle,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            model.content,
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
