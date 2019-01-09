

import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget{
  State<StatefulWidget> createState()=> new RadioButtonState();
  }

  class RadioButtonState extends State<RadioButton> {

  String radioBoxValue;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;

   String actionText = "Default";



    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        title: "My Application",
        home: new Scaffold(
          appBar: AppBar(
            title: new Center(
              child: new Text("CheckBox"),
            ),
            actions: <Widget>[]),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Radio(
                value: "premier",
                 groupValue: radioBoxValue,
                 onChanged: (String newValue){
                 setValue(newValue);
        },),
              new Text("First"),

            ],
          )
                ),
        new Padding(
          padding: EdgeInsets.only(top: 5.0),
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Radio(
                value: "second" ,
                groupValue: radioBoxValue,
                onChanged: (String newValue){
                  setValue(newValue);
                },),
                new Text("second")
          ],
        )),

              ],

            ),
          )),

      );
    }
       void setValue(String newValue){
      setState(() {
        radioBoxValue = newValue;
        print("radioBoxValue");
      });
       }

  }
