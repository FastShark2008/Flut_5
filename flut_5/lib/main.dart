import 'package:flutter/material.dart';
import 'details/face_contact.dart';
import 'details/title_contact.dart';
import 'details/form_contact.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
        color: Colors.white,
          child: ListView(
          children: <Widget>[
            FaceContact(),
            TitleContact(),
            FormContact(),
          ],
          ),
        ),
      ),
    );
  }
}


