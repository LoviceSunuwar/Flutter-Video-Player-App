import 'package:flutter/material.dart';


class SearchBackground extends StatelessWidget {
  final Widget child;

  const SearchBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        
      ),
      height: size.height,
      width: double.infinity,
      child: Stack(
         children: <Widget>[
          
          child
        ],
      ),
    );
  }
}