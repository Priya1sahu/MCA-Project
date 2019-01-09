import 'package:flutter/material.dart';
import 'package:flutter_project/tabs1/first.dart';
import 'package:flutter_project/tabs1/second.dart';
import 'package:flutter_project/tabs1/third.dart';


class MyHome1 extends StatefulWidget {
  @override
  MyHome1State createState() => new MyHome1State();
}

// SingleTickerProviderStateMixin is used for animation
class MyHome1State extends State<MyHome1> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
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

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          // set icon to the tab
          icon: new Icon(Icons.call),
        ),
        new Tab(
          icon: new Icon(Icons.message),
        ),
        new Tab(
          icon: new Icon(Icons.dialpad),
        ),
        new Tab(
          icon: new Icon(Icons.image),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
        appBar: new AppBar(
          // Title
            title: new Text("Using Tabs"),
            // Set the background color of the App Bar
            backgroundColor: Colors.black,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new First(), new Second(), new Third()]));
  }
}

