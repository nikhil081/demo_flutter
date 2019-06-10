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
  bool visibilityTag = false;

  void _changed(bool t) {
    setState(() {
      visibilityTag = t;
    });
  }




  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                new Container(
                  height: height*0.08,
                  width: width / 2,
                  child: RaisedButton(
                    color: visibilityTag?Color(0xff808B96):Color(0xffD5D8DC),
                    onPressed: () {
                      _changed(true);

                    },
                    child: Text("hey"),
                  ),
                ),
                new Container(
                  height: height*0.08,

                  width: width / 2,

                  child: RaisedButton(
                    color: visibilityTag?Color(0xffD5D8DC):Color(0xff808B96),


                    onPressed: () {

                      _changed(false);
                    },
                    child: Text("yoo"),
                  ),
                ),
              ],
            ),
           new Container(
             color: Colors.black,
             height: height*0.002,
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



