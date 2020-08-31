
import 'package:castllyv2/Screens/genrescreen/Comedy/body.dart';
import 'package:flutter/material.dart';

class ComedyScreen extends StatefulWidget {
  @override
  _ComedyScreenState createState() => _ComedyScreenState();
}

class _ComedyScreenState extends State<ComedyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("Comedy", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
  body: ComedyBody(),
    );
  }
}