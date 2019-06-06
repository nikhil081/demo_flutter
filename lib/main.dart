
import 'package:flutter/material.dart';
import 'package:tab/seco.dart';
import 'package:tab/thi.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: new bottom(),
  ));
}
class bottom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _hg();
  }
}
class _hg extends State<bottom> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        leading: Builder(builder:
            (context) => IconButton(
          icon: new Icon(Icons.settings),
          onPressed: (){
          },
        )),
        actions: <Widget>[


          // here add notification icon
          Container(padding: const EdgeInsets.all(8.0), child: Icon(Icons.settings)) // here add other icon
        ],
//       leading: Builder(builder:
//       (context) => IconButton(
//         icon: new Icon(Icons.settings),
//         onPressed: (){
//         },
//       )),



        backgroundColor: Colors.blue,

      ),
      // Set the TabBar view as the body of the Scaffold
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new Home(), SecondTab(), new ThirdTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.favorite),
            ),
            new Tab(
              icon: new Icon(Icons.adb),
            ),
            new Tab(
              icon: new Icon(Icons.airport_shuttle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}