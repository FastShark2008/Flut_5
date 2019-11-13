// Блок контактов

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:phone_number/phone_number.dart';

class FormContact extends StatelessWidget {
  @override

  Widget build(context) => Column(
    children: <Widget>[
      Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(50),
          onTap: () async {
            const url = 'tel:<phone number>';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Wrong number $url';
            }
          },
          child: ListTile(
            leading: Icon(Icons.phone_in_talk, color: Colors.blue),
            title: Text('+7 909 789 67 77'),
            trailing: Icon(Icons.call_made, color: Colors.black,),
          ),
        ),
      ),
      Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(50),
          onTap: () async {
            const url = 'mailto:flutter.maria@dart.com'
                '?subject=...'
                '&body=Добрый день';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'You could not send $url';
                }
              },
          child: ListTile(
            leading: Icon(Icons.contact_mail, color: Colors.blue,),
            title: Text('flutter.maria@dart.com'),
            trailing: Icon(Icons.send, color: Colors.black,),
          ),
        ),
      )
    ],
  );
}
