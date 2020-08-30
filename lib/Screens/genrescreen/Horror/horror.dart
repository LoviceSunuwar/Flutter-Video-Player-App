
import 'package:castllyv2/Screens/genrescreen/Horror/body.dart';
import 'package:flutter/material.dart';

class HorrorScreen extends StatefulWidget {
  @override
  _HorrorScreenState createState() => _HorrorScreenState();
}

class _HorrorScreenState extends State<HorrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: HorrorBody(),
    );
  }
}