import 'package:flutter/material.dart';
import 'package:flutter_project/bottomnavigation.dart';
import 'package:flutter_project/gridview.dart';
import 'package:flutter_project/home_screen.dart';
import 'package:flutter_project/listview.dart';
import 'package:flutter_project/slider_screen.dart';
import 'package:flutter_project/topnavigation.dart';


class Rais_Botton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Rais_BottonState();
}
class Rais_BottonState extends State<Rais_Botton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Raised Button"),
        ),
        body: Container(
          alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Drawer'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      }),
                  // ignore: expected_token
                  new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Bottom navigation'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigation_Bar()));
                      }),
                     new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Slider_screen'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderPage()));
                      }),
                  new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('tabs'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  MyHome1()));
                      }),
                  new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('ListView'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  List_View()));
                      }),
                  new RaisedButton(
                      padding: const EdgeInsets.all(9.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('GridView'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> GridView1()));
                      }),
                ],
              ),
            ))

    );
  }
}
