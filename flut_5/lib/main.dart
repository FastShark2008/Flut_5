import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FaceContact(),
      ),
  );
  }
}

// Верхний блок с изображением
class FaceContact extends StatelessWidget {

  Widget build(BuildContext context) {
  return Container(child:
    Image.network('https://i.pinimg.com/originals/5e/81/37/5e81371c890a88377dd2195a99d3deba.jpg',
    fit: BoxFit.fitWidth
    ),
    padding: EdgeInsets.all(3.0),
    width: double.infinity,
    height: 350,
    alignment: Alignment.topCenter
    );
  }
}


// Блок наименование контакта



// Блок контактов



// Блок навигации
