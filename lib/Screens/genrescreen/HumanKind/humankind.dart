
import 'package:castllyv2/Screens/genrescreen/HumanKind/body.dart';
import 'package:flutter/material.dart';

class HumanKindScreen extends StatefulWidget {
  @override
  _HumanKindScreenState createState() => _HumanKindScreenState();
}

class _HumanKindScreenState extends State<HumanKindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("Human Kind", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
  body: HumanKindBody(),
    );
  }
}