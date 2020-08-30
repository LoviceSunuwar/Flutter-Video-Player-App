
import 'package:castllyv2/Screens/genrescreen/Reality_TVshows/body.dart';
import 'package:flutter/material.dart';

class RealityScreen extends StatefulWidget {
  @override
  _RealityScreenState createState() => _RealityScreenState();
}

class _RealityScreenState extends State<RealityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: RealityBody(),
    );
  }
}