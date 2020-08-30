
import 'package:castllyv2/Screens/moviedetail/components/body.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';

class MovieDtl extends StatelessWidget {
  final Movie movie;

  const MovieDtl({Key key, this.movie}) : super(key: key);
  
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
      body: MovieBody(movie: movie),
     // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}


