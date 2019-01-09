import 'package:flutter/material.dart';
import 'package:flutter_project/tabs/first.dart';
import 'package:flutter_project/tabs/fourth.dart';
import 'package:flutter_project/tabs/second.dart';
import 'package:flutter_project/tabs/third.dart';




class BottomNavigation_Bar extends StatefulWidget {
  @override
  BottomNavigation_BarState createState() => new BottomNavigation_BarState();
}

class BottomNavigation_BarState extends State<BottomNavigation_Bar> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        // Title
        title: new Text("Bottom Navigation Bar"),
        // Set the background color of the App Bar
        backgroundColor: Colors.black,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab(), new FourthTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.green,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.call),
            ),
            new Tab(
              icon: new Icon(Icons.message),
            ),
            new Tab(
              icon: new Icon(Icons.image),
            ),
            new Tab(
              icon: new Icon(Icons.dialpad),
            )
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}