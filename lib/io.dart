import 'package:flutter/material.dart';
class srt extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bn();
  }
}
class _bn extends State<srt>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new apt().getappbar(),
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
