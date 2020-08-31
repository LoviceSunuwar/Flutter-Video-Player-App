
import 'package:castllyv2/Screens/genrescreen/Musical_Dance/body.dart';
import 'package:flutter/material.dart';

class MusicalDanceScreen extends StatefulWidget {
  @override
  _MusicalDanceScreenState createState() => _MusicalDanceScreenState();
}

class _MusicalDanceScreenState extends State<MusicalDanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
  title: Text("Musical Dance", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
  ),
  body: MusicalDanceBody(),
    );
  }
}