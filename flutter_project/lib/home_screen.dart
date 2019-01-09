import 'package:flutter/material.dart';
import 'package:flutter_project/language/language1.dart';
import 'package:flutter_project/language/language2.dart';
import 'package:flutter_project/language/language3.dart';

class HomeScreen extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("php", Icons.arrow_forward),
    new DrawerItem("java", Icons.arrow_forward),
    new DrawerItem("android", Icons.arrow_forward),
  ];

  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new ABC();
      case 1:
        return new XYZ();
      case 2:
        return new PQR();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Language"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

/*
class HomePage extends StatefulWidget {

 State<StatefulWidget> createState() {
   return HomePage();
 }
}

abstract class HomePageState extends State<HomePage> {
 @override
 Widget build(BuildContext context) {

   // TODO: implement build
   return Scaffold(
     appBar: new AppBar(
       // here we display the title corresponding to the fragment
       // you can instead choose to have a static title
       title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
     ),

 }
}
*/


