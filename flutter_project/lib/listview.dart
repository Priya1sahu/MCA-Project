import 'package:flutter/material.dart';



class List_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    List<String> listData = [
      'Priya',
      'Kajal',
      'Riya',
      'Balbhadra',
      'Rushi',
      'Maulik',
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            // ignore: expected_token
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Apps'),
            ),
            ListTile(
              leading: Icon(Icons.voicemail),
              title: Text('Voicemail'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Keyboard'),
            )
          ],
        ),
      ),
    );
  }
  }
