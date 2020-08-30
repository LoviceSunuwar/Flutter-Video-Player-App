import 'package:flutter/material.dart';



class ForgotPasswordBackground extends StatelessWidget {
  final Widget child;
  const ForgotPasswordBackground({
     this.child,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          child,
        ],
      ),
    );
  }
}