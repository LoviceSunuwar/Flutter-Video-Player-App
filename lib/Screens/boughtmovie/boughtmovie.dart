import 'package:castllyv2/Screens/boughtmovie/components/boughtmoviebody.dart';
import 'package:flutter/material.dart';

class BoughtmovieScreen extends StatefulWidget {
  @override
  _BoughtmovieScreenState createState() => _BoughtmovieScreenState();
}

class _BoughtmovieScreenState extends State<BoughtmovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
        title: Center(
          child: Image.asset('assets/images/logo/rectanglepinklogo.jpeg',
        height: 60,
        ),
        )
      ),
      body: BoughtMoviebody(),
    );
  }
}