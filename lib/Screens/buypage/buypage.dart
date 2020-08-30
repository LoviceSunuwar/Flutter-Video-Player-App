import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 450,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(value: 1, 
            groupValue: 1, 
            onChanged: null,
            title: Text("Myself", 
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              
            ),
            ),
            activeColor: Colors.pink,
            
            )
          ],
        ),
      ),
    );
  }
}