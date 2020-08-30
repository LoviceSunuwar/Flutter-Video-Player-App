import 'package:flutter/material.dart';

class CategorynameBar extends StatelessWidget {
  final String category_name;

  const CategorynameBar({Key key, this.category_name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  //  Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){},
                child: Text("See all", 
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600  
              ),
              ),
              )
            ),
            
          
      )
      
      // child: Row(
      //   children: <Widget>[
      //     Center(
      //       child: Container(
      //         alignment: Alignment.centerRight,
      //         child: InkWell(
      //           onTap: (){},
      //           child: Text("See All", 
      //         style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold  
      //         ),
      //         ),
      //         )
      //       ),
      //     ),
      //     Container(
      //       child: InkWell(
      //         child: Text(
      //           category_name,
      //           style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold  
      //         ),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
         
    );
  }
}