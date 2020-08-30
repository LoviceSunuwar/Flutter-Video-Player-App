import 'package:castllyv2/Screens/search/components/searchbackground.dart';
import 'package:flutter/material.dart';

class SearchBoyd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SearchBackground(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/logo/rectanglepinklogo.jpeg"))
              ),
            ),
             Container(
               height: 50,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                      height: 60,
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                          
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                                        child: Container(
                        child: Icon(
                          Icons.search,
                          size: 50,
                        ),
                      ),
                    )

                 ],
               ),
             ),
                    SizedBox(
                      height: 20,

                    ),

                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/extra/search.jpg")
                        
                        )
                      ),
                    )
        

          ],
        ),
      ));
  }
}
