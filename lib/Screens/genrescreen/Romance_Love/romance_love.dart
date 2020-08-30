
import 'package:castllyv2/Screens/genrescreen/Romance_Love/body.dart';
import 'package:flutter/material.dart';

class RomanceScreen extends StatefulWidget {
  @override
  _RomanceScreenState createState() => _RomanceScreenState();
}

class _RomanceScreenState extends State<RomanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: RomanceBody(),
    );
  }
}