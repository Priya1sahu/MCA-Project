import 'package:flutter/material.dart';


class Switch1 extends StatefulWidget{
  @override
  Switch1State createState() => new Switch1State();
    // TODO: implement createState


}

class Switch1State extends State<Switch1> {

  bool value = false;

  void onChanged(bool value) {
    setState(() {
      value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("switch demo"),


      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text("My Switch"),
                new Switch(value: value, onChanged: (bool value) {
                  onChanged(value);
                }),
              ],
            ),
            new Switch(value: value, onChanged: (bool value) {
              onChanged(value);
            }),

            new SwitchListTile(
                title: new Text('Click Me'),
                activeColor: Colors.black,
                secondary: const Icon(Icons.home),
                value: value,
                onChanged: (bool value) {
                  onChanged(value);
                })
          ],

        ),
      ),
    );
  }
}