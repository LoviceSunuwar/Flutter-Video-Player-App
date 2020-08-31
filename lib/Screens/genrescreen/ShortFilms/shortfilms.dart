
import 'package:castllyv2/Screens/genrescreen/ShortFilms/body.dart';
import 'package:flutter/material.dart';

class ShortFilmsScreen extends StatefulWidget {
  @override
  _ShortFilmsScreenState createState() => _ShortFilmsScreenState();
}

class _ShortFilmsScreenState extends State<ShortFilmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("Short Films", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
  body: ShortFilmsBody(),
    );
  }
}