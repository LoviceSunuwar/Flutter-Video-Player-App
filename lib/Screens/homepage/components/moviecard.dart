
import 'package:castllyv2/Screens/moviedetail/moviedetail.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';


class HorizontalMovieCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 300,
      width: size.width * 1,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) => HorizontalCard(movie: movies[index] )),
    );
  }
}

class HorizontalCard extends StatelessWidget {

  final Movie movie;

  const HorizontalCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => MovieDtl(
                movie : movie,
              ))),
      
      child: Container(
        
        width: 160,
        
      child: Card(
        child: Wrap(
        children: <Widget>[
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(movie.poster,),fit: BoxFit.cover)
            ),
          ),
          ListTile(
            title: Text(movie.title),
            subtitle: Row(
              children: <Widget>[
                Text("rating"),
                Icon(Icons.star, color: Colors.yellow, size: 20,)
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen[300],
              ),
              child: Text("\$ ${movie.price}"),
            ),
          )
        ],   
        ),
      )
      ),
      
    );
  }
}