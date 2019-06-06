import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return io();
  }

  // Stateful Widgets don't have build methods.
  // They have createState() methods.
  // Create State returns a class that extends Flutters State class.

}

class io extends State<Counter> {
  // gotta have that build method!
  Widget build(context) {
    return new Column(
      children: <Widget>[
        new Text("New 2"),
      ],
    );
  }
}