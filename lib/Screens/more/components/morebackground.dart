import 'package:flutter/material.dart';

class MoreBackground extends StatelessWidget {
 
final Widget child;

  const MoreBackground({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height:size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),

              ),
              color: Colors.purple[700]
            ),
          ),
          child,
        ],
      ),
    );
  }
}