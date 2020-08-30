
import 'package:castllyv2/Screens/genrescreen/Thriller/body.dart';
import 'package:flutter/material.dart';

class ThrillerScreen extends StatefulWidget {
  @override
  _ThrillerScreenState createState() => _ThrillerScreenState();
}

class _ThrillerScreenState extends State<ThrillerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: ThrillerBody(),
    );
  }
}