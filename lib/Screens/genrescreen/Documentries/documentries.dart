
import 'package:castllyv2/Screens/genrescreen/Documentries/body.dart';
import 'package:flutter/material.dart';

class DocumentriesScreen extends StatefulWidget {
  @override
  _DocumentriesScreenState createState() => _DocumentriesScreenState();
}

class _DocumentriesScreenState extends State<DocumentriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), ),
  body: DocumentriesBody(),
    );
  }
}