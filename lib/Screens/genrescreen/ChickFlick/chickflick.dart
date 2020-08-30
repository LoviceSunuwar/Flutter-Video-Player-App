
import 'package:castllyv2/Screens/genrescreen/ChickFlick/body.dart';
import 'package:flutter/material.dart';

class ChickFlickScreen extends StatefulWidget {
  @override
  _ChickFlickScreenState createState() => _ChickFlickScreenState();
}

class _ChickFlickScreenState extends State<ChickFlickScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: ChickFlickBody(),
    );
  }
}