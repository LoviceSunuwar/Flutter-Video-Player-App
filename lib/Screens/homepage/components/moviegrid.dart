
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';

class Moviecard extends StatelessWidget {
  final Movie movie;
  final String cat_name;
  final Function see_all;

  const Moviecard({Key key, this.cat_name, this.see_all, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),

      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Text(cat_name),
                onTap: (){},

              ),

              SizedBox(
                width: size.width * 0.5,
              ),

              InkWell(
                child: Text("See All"),
                onTap: (){},

              )
            ],
          ),

         InkWell(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(movie.poster),
                  )
                ),
              )
            ],
          ),
         )

        ],
      ),
    );
  }
}