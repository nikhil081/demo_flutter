import 'package:flutter/material.dart';
class Counter2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }


}

class _MyHomePageState extends State<Counter2> {
  // gotta have that build method!
  Widget build(context) {
    return new Column(
      children: <Widget>[
        new Text("New 3"),
      ],
    );
  }
}