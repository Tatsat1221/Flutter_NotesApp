class NotesModel {
  final String title;
  final String content;
  final String date;
  final int colorId;

  NotesModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.colorId});

  factory NotesModel.fromJson(Map<String, dynamic> json) => NotesModel(
      title: json['note_title'],
      content: json['note_content'],
      date: json['creation_date'],
      colorId: json['color_id']);
}

