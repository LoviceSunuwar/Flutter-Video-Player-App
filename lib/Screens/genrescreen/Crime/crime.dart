
import 'package:castllyv2/Screens/genrescreen/Crime/body.dart';
import 'package:flutter/material.dart';

class CrimeScreen extends StatefulWidget {
  @override
  _CrimeScreenState createState() => _CrimeScreenState();
}

class _CrimeScreenState extends State<CrimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: CrimeBody(),
    );
  }
}