
import 'package:castllyv2/Screens/genrescreen/Action/body.dart';
import 'package:flutter/material.dart';

class ActionScreen extends StatefulWidget {
  @override
  _ActionScreenState createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("Action", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
       body: ActionBody(),
      //SingleChildScrollView(
      //         child: Column(
      //     children: <Widget>[
      //       Container(
      //         width: size.width * 1,
      //         decoration: BoxDecoration(
                
      //         color: Colors.pink,
      //         ),
      //         child: Center(
      //           child: Text("Action",
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 20
            
      //       ),
      //       ),
      //         ),),
      //       ActionBody(),
      //     ],
      //   ),
      // ),
    );
  }
}