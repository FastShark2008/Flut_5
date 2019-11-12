import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
          child: ListView(
          children: <Widget>[
            FaceContact(),
            TitleContact(),
            FormContact(),


          ],
        ),
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

    color: Colors.white,
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
        Expanded(
          flex: 9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Флуттерова',
              softWrap: true,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.subhead,
              ),
              Text('Мария Дартовна',
                softWrap: true,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline,
              ),
              Text('сексуальная штучка',
              softWrap: true,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
      ),
          Expanded(
            flex: 1,
            child: Column(children: <Widget>[
              Icon(Icons.favorite, color: Colors.red, size: 35,),
              Text('In Love', textAlign: TextAlign.center,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// Блок контактов
class FormContact extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.phone_in_talk, color: Colors.blue),
              title: Text('+7 909 789 67 77'),
              trailing: Icon(Icons.more_vert),
          ),
        ),
          Card(
            child: ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.blue,),
              title: Text('flutter.maria@dart.com'),
              trailing: Icon(Icons.more_vert),
            ),
          )
        ],
      );
  }
}

// Блок навигации
