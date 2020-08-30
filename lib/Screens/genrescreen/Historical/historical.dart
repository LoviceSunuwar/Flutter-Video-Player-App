
import 'package:castllyv2/Screens/genrescreen/Historical/body.dart';
import 'package:flutter/material.dart';

class HistoricalScreen extends StatefulWidget {
  @override
  _HistoricalScreenState createState() => _HistoricalScreenState();
}

class _HistoricalScreenState extends State<HistoricalScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: HistoricalBody(),
    );
  }
}