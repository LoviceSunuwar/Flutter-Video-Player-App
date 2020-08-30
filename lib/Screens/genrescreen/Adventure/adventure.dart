
import 'package:castllyv2/Screens/genrescreen/Adventure/body.dart';
import 'package:flutter/material.dart';

class AdventureScreen extends StatefulWidget {
  @override
  _AdventureScreenState createState() => _AdventureScreenState();
}

class _AdventureScreenState extends State<AdventureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: AdventureBody(),
    );
  }
}