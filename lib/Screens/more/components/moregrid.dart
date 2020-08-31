import 'package:flutter/material.dart';

class MoreGrid extends StatelessWidget {
  final String gridicon;
  final String gridtitle;
  final Function ontap;

  const MoreGrid({Key key, this.gridicon, this.gridtitle, this.ontap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 100,
          width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[200],


        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(gridicon, height: 80, width: 80,),
            Text(gridtitle,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),
            )

          ],
        ),
        
        ),
      ),
    );
  }
}