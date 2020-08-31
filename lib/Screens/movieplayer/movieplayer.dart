
import 'package:castllyv2/Screens/movieplayer/components/movieplayerbody.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';

class MoviePlayer extends StatelessWidget {
  final Movie movie;

  const MoviePlayer({Key key, this.movie}) : super(key: key);
  
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
      body: MoviePlayerBody(movie: movie),
     // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}


