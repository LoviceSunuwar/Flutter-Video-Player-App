import 'package:flutter/material.dart';


class MoviePlayerBackground extends StatelessWidget {
  final Widget child;
  const MoviePlayerBackground({
    Key key, this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Container(
       decoration: BoxDecoration(
      //  gradient: LinearGradient(colors: [Colors.black, Colors.pink, Colors.white],
      //  begin: Alignment.topCenter,
      //  end: Alignment.bottomRight,
      //  stops: [0.1, 0.3, 0.9]
      //  ),
      color: Colors.white
     ),
     
       width: double.infinity,
       height: size.height,
      child: Stack(
        children: <Widget>[
         child, 
        ],
      ),
    );
  }
}