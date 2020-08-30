
import 'package:castllyv2/Screens/genrescreen/Drama/body.dart';
import 'package:flutter/material.dart';

class DramaScreen extends StatefulWidget {
  @override
  _DramaScreenState createState() => _DramaScreenState();
}

class _DramaScreenState extends State<DramaScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: DramaBody(),
    );
  }
}