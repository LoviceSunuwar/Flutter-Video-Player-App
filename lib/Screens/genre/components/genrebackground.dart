import 'package:flutter/material.dart';


class GenreBackground extends StatelessWidget {
  final Widget child;
  const GenreBackground( {
    Key key, this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white
      //  gradient: LinearGradient(colors: [Colors.white, Colors.pink, Colors.deepPurple],
      //  begin: Alignment.topCenter,
      //  end: Alignment.bottomRight,
      //  stops: [0.3, 0.5, 0.9]
      //  ),
     ),
       width: double.infinity,
       height: size.height,
       child: Stack(
         alignment: Alignment.center,
         children: <Widget>[
            Positioned(
             top: 10,
             child: Image.asset('assets/images/logo/rectanglepinklogo.jpeg',
             width: size.width * 1,
           ),
           ),
            
           child,
         ],
         
       ),
    );
  }
}