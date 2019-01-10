import 'package:flutter/material.dart';


class AlertDialog1 extends StatefulWidget {
  @override
  AlertDialog1State createState() => new AlertDialog1State ();
}

enum MyDialogAction {
  yes,
  no,
  maybe
}

void _dialogResult(MyDialogAction value) {
  print('You selected $value');

}


class AlertDialog1State  extends State<AlertDialog1> {

  // Generate dialog
  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "Are You Sure?",
      style: new TextStyle(fontSize: 30.0),),
    actions: <Widget>[
      new FlatButton(onPressed: (){_dialogResult(MyDialogAction.yes);}, child: new Text('Yes')),
      new FlatButton(onPressed: (){_dialogResult(MyDialogAction.no);}, child: new Text('No')),
      new FlatButton(onPressed: (){_dialogResult(MyDialogAction.maybe);}, child: new Text('Never')),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Alert Dialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Touch the boutton"),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context, child: dialog);
                }),
          ),
        ));
  }
}