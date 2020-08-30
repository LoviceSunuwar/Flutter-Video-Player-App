
import 'package:castllyv2/Screens/genre/components/genrebackground.dart';
import 'package:flutter/material.dart';


class GenreBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return GenreBackground(
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.18),
      child: GridView.count(crossAxisCount: 2,
      childAspectRatio:  MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 4),
      children: <Widget>[
        Genrecard(
         
          genreicon: "assets/images/genrelogo/Action.png",
          genrename: "Action",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Adventure.png",
          genrename: "Adventure",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/ChickFlick.png",
          genrename: "Chick Flick",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Comedy.png",
          genrename: "Comedy",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Crime.png",
          genrename: "Crime",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Ubuntu.png",
          genrename: "Ubuntu",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Documentary.png",
          genrename: "Documentries",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Drama.png",
          genrename: "Drama",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Education.png",
          genrename: "Education",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Horror.png",
          genrename: "Horror",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Historical.png",
          genrename: "Historical",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/HumanKind.png",
          genrename: "HumanKind",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Kids.png",
          genrename: "Kids",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Music.png",
          genrename: "Musical/Dance",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Reality.png",
          genrename: "Reality/TV show",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Romance.png",
          genrename: "Romance/Love",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Sci-Fi.png",
          genrename: "Science",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Series.png",
          genrename: "Series",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/ShortFilms.png",
          genrename: "Short Films",
        ),
        Genrecard(
          genreicon: "assets/images/genrelogo/Thriller.png",
          genrename: "Thriller",
        ),
      ],
      )
    
      ),
    );
  }
}

class Genrecard extends StatelessWidget {
  final String genreicon;
  final String genrename;
  const Genrecard({
    Key key, this.genrename, this.genreicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, "/$genrename");},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 100,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(genreicon),
            Align(
              alignment: Alignment.centerRight,
              child: Text(genrename))
            
          ],
        )
      ),
              ),
    );
  }
}

