import 'package:flutter/material.dart';


class BoughMovieBackground extends StatelessWidget {
  
  final Widget child;

  const BoughMovieBackground({Key key, this.child}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          child
        ],
      ),
    );
  }
}