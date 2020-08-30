
import 'package:carousel_slider/carousel_slider.dart';
import 'package:castllyv2/Screens/moviedetail/moviedetail.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';
class C_Slider extends StatelessWidget {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: CarouselSlider(
        items: movies.map((movie) {
                return GestureDetector(
                  onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => MovieDtl(
                movie : movie,
              ))),
                                  child: Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 1.8,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(movie.poster), 
                            fit: BoxFit.fill)
                          ),
                        ),
                      );
                    },
                  ),
                );
              
              
              
              }).toList(),
               options: CarouselOptions(
                 initialPage: 0,
                 aspectRatio: 16/9,
                 autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enlargeCenterPage: true,
              //     onPageChanged: (index, reason) {
              //   setState(() {
              //     _current = index;
              //   });
              // }
            ),
               ),
               
              
    );
  }
}