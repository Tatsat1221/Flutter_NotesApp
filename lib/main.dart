import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task_3/bloc/notes_cubit/notes_cubit.dart';
import 'package:flutter_task_3/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: false);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotesApp',
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NotesCubit>(
            create: (BuildContext context) => NotesCubit(),
          ),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
