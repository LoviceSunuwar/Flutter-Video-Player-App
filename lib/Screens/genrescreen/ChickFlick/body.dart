
import 'package:castllyv2/Screens/genrescreen/components/background.dart';
import 'package:castllyv2/Screens/genrescreen/components/moviegrid.dart';
import 'package:flutter/material.dart';

class ChickFlickBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenreBackground(
      child: GenreMovieGrid(),);
  }
}
