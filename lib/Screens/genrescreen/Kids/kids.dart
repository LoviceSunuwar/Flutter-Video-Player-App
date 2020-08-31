
import 'package:castllyv2/Screens/genrescreen/Kids/body.dart';
import 'package:flutter/material.dart';

class KidsScreen extends StatefulWidget {
  @override
  _KidsScreenState createState() => _KidsScreenState();
}

class _KidsScreenState extends State<KidsScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  title: Text("KIds", 
    style: TextStyle(
      color: Colors.black
    ),
  ),
   ),
  body: KidsBody(),
    );
  }
}