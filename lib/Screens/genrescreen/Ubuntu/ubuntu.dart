
import 'package:castllyv2/Screens/genrescreen/Ubuntu/body.dart';
import 'package:flutter/material.dart';

class UbuntuScreen extends StatefulWidget {
  @override
  _UbuntuScreenState createState() => _UbuntuScreenState();
}

class _UbuntuScreenState extends State<UbuntuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: UbuntuBody(),
    );
  }
}