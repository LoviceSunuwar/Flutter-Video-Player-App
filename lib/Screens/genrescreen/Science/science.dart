
import 'package:castllyv2/Screens/genrescreen/Science/body.dart';
import 'package:flutter/material.dart';

class ScienceScreen extends StatefulWidget {
  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("Science", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
  body: ScienceBody(),
    );
  }
}