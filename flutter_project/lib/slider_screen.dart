import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new SizedBox(
          height: 250,
          width: 350,

          child: new Carousel (

            images: [
              new ExactAssetImage('images/abnew.png'),
              new ExactAssetImage('images/anew.png'),
              new ExactAssetImage('images/download.png'),
              new ExactAssetImage('images/new.png'),

            ],

            dotSpacing: 4.0,
            dotColor: Colors.black,

          ),
        )
      ),
    );
  }

}
