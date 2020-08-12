import 'package:flutter/material.dart';

class SingupBG extends StatelessWidget {
  final Widget child;
  const SingupBG({
    Key key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
       width: double.infinity,
       height: size.height,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
          
           child,
         ],
    )
    );
  }
}