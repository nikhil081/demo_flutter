import 'package:flutter/material.dart';
import 'new2.dart';
import 'new3.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _home();
  }
}

class _home extends State<Home> {
  bool visibilityTag = true;

  void _changed(bool t) {
    setState(() {
      visibilityTag = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  width: width / 2,
                  child: RaisedButton(
                    onPressed: () {
                      _changed(true);
                    },
                    child: Text("hey"),
                  ),
                ),
                new Container(
                  width: width / 2,
                  child: RaisedButton(
                    onPressed: () {
                      _changed(false);
                    },
                    child: Text("yoo"),
                  ),
                ),
              ],
            ),
            visibilityTag
                ? new Container(
                    child: new Counter(),
                  )
                : new Container(
                    child: new Counter2(),
                  )
//            new Container(
//
//              child: new Counter(),
//            ),
//            new Container(
//              child: new Counter2(),
//            ),
          ],
        ),
      ),
    );
  }
}
