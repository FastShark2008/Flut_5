import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ListView(
        children: <Widget>[
          FaceContact(),
          TitleContact(),


        ],
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
class TitleContact extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: Row(children: <Widget>[
        Expanded(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Имя Отчество Фамилия',
              overflow: TextOverflow.visible,
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                  fontSize: 25.0),
              ),
              Text('краткое описание',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey
                ),
              ),
            ],
          ),
        )
      ],),
    );
  }
}



// Блок контактов
class FormContact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormContactState();
}

class FormContactState extends State {
  final _formKey = GlobalKey<FormContactState>();
  
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
                Text('NAME:', style: TextStyle(fontSize: 20.0),),
                TextFormField(validator: (value){
                    if (value.isEmpty)
                      return 'Пожалуйста введите свое имя';
                    }
                    ),
                SizedBox(height: 20.0)
    ]),
    ),
    );
  }
}

// Блок навигации
