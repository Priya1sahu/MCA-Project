import 'package:flutter/material.dart';

class ImageBack extends StatefulWidget{
  @override
  ImageBackState createState() => new ImageBackState();
    // TODO: implement createState


}

class ImageBackState extends State<ImageBack>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/abnew.png"),fit: BoxFit.cover,),
            ),
          ),
          new Center(
            child: new Text("hello background"),
            heightFactor: 100.0,
              widthFactor: 100.0,
          )

        ],
      ),
      );
  }


}