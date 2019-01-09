import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/raisedbutton.dart';





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Rais_Botton()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
            'images/download.png'),
      ),
      backgroundColor: Colors.green,
    );
  }
}

