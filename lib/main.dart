import 'package:flutter/material.dart';
import 'package:tab/seco.dart';
import 'package:tab/thi.dart';
import 'home.dart';
import 'io.dart';
void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: new bottom(),
  ));
}

class bottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _hg();
  }
}

class _hg extends State<bottom> with SingleTickerProviderStateMixin {
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
      appBar: new apt().getappbar(),
      drawer: Drawer(
          child: Container(
        color: Colors.black,
        child: ListView(

            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Container(
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 40),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                          "https://cdn2.iconfinder.com/data/icons/business-management-52/96/Artboard_20-512.png"),
                                    ),
                                    new Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Text(
                                            "John Doe",
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          new Text(
                                            "San Francisco, CA",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  )),
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => srt()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Item 2',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ]),
      )),
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
class apt{
  Widget getappbar(){
    return AppBar(

//      leading: Builder(builder:
//          (context) =>
//          IconButton(
//            icon: new Icon(Icons.settings),
//            onPressed: () {},
//          )),
      actions: <Widget>[


        Container(
            padding: const EdgeInsets.all(8.0), child: Icon(Icons.settings))
        // here add other icon
      ],


      backgroundColor: Colors.blue,
    );
  }
}
