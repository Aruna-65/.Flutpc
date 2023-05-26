import 'package:flutter/material.dart';
import './model/note.dart';
import './model/notesmodel.dart';
import 'package:scoped_model/scoped_model.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new ScopedModel<NotesModel>(
      model: notesModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}