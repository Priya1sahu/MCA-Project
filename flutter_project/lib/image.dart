import 'package:flutter/material.dart';



class DebugUiPage extends StatefulWidget {
  DebugUiPage({Key key}) : super(key: key);

  @override
  DebugUiPageState createState() => new DebugUiPageState();
}

class DebugUiPageState extends State<DebugUiPage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Profile"),
        ),
        body: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    width: 50.0,
                    height: 50.0,


                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,

                        image: new DecorationImage(
                            fit: BoxFit.fill,

                          image: new AssetImage("images/abnew.png"),

                        )

                    )),
              ],
            ))
    );

  }
}