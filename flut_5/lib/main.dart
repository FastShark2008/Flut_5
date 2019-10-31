import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column([
          children: Row(FaceContact());
          children: Row(Form());
        ]),
        ),
  );
  }
}

// Верхний блок с изображением
class FaceContact extends StatelessWidget {

  Widget build(BuildContext context) {
  return Container(child:
    Image.network('https://i.pinimg.com/originals/5e/81/37/5e81371c890a88377dd2195a99d3deba.jpg',
    fit: BoxFit.cover,
    //scale: 1.0,
    ),

    //decoration: BoxDecoration(
    //    boxShadow: [BoxShadow(
    //      color: Colors.black45,
    //      blurRadius: 5.0,
    //      spreadRadius: 5.0,
    //      offset: Offset(-5, 0)
    //    )]
    // ),

    color: Colors.black,
    padding: EdgeInsets.all(0.0),
    width: double.infinity,
    height: 350,
    // alignment: Alignment.topCenter
    );
  }
}


// Блок наименование контакта



// Блок контактов
class FormContact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormContactState()
}

class FormContactState extends State {
  final _formKey = GlobalKey<FormContactState>();
  
  Widget build(BuildContext context) {
    return Form(child: Column(), key: _formKey);
  }
}

// Блок навигации
