// Блок наименование контакта

import 'package:flutter/material.dart';

class TitleContact extends StatelessWidget {
  Widget build(context) => Container(
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
              Text('программист',
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
          ],
          ),
        ),
      ],
      ),
    );
  }