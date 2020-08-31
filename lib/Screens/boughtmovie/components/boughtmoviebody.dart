
import 'package:castllyv2/Screens/movieplayer/movieplayer.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';

class BoughtMoviebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.symmetric(vertical: 15),
          child: GridView.builder(
      itemCount: movies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio:  MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.3),),
      
      
           itemBuilder: (context, index) => GenreGridview(movie: movies[index] )),
          ),
    );
  }
}

class GenreGridview extends StatelessWidget {
  final Movie movie;

  const GenreGridview({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => MoviePlayer(
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
