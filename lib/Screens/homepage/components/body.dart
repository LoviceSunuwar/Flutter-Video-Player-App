
import 'package:castllyv2/Screens/homepage/components/background.dart';
import 'package:castllyv2/Screens/homepage/components/carousel.dart';
import 'package:castllyv2/Screens/homepage/components/categorylist.dart';
import 'package:castllyv2/Screens/homepage/components/categoryname.dart';
import 'package:castllyv2/Screens/homepage/components/moviecard.dart';
import 'package:flutter/material.dart';

class HomepageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomepageBackground(
      child: SingleChildScrollView(
        child: Column(
           children: <Widget>[
            LogoBarTop(),
            CategoryList(),
            GenresHorizontal(),
            C_Slider(),
            //MovieList(),
            CategorynameBar(
              category_name: "Most Popular",
            ),
            HorizontalMovieCard(),
            CategorynameBar(
              category_name: "New Releases",
            ),
            HorizontalMovieCard(),
            CategorynameBar(
              category_name: "Editor's choice",
            ),
            HorizontalMovieCard(),
            CategorynameBar(
              category_name: "Random Picks",
            ),
            HorizontalMovieCard(),
            // moviecategoriecard(
            //   categoryname: "New Realases",
            //   see_all: (){},
            // ),
            // moviecategoriecard(
            //   categoryname: "Editor's choice",
            //   see_all: (){},
            // ),
            // moviecategoriecard(
            //   categoryname: "Most Popular",
            //   see_all: (){},
            // ),
            // moviecategoriecard(
            //   categoryname: "Random Picks",
            //   see_all: (){},
            // ),

           ],
        ),
      ),
    );
    
  }
}

class LogoBarTop extends StatelessWidget {
  const LogoBarTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: <Widget>[
    Image.asset(
    'assets/images/logo/rectanglepinklogo.jpeg',
      
    height: 52,
        ) ,
        SizedBox(
          width: 210,
        ),
        
        IconButton(
        icon: Icon(Icons.search, size: 30,
        color: Colors.black,), 
        onPressed: null),
    
        ],
      ),
    );
  }
}


class GenresHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    List<String> genreshorizontal = [
      
      "Action",
      "Adventure",
      "Chick Flick",
      "Comedy", 
      "Crime", 
      "Ubuntu", 
      "Documentaries",
      "Drama",
      "Education",
      "Horror",
      "See More",
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genreshorizontal.length,
        itemBuilder: (context, index) => GenreHorizontalCard(genre: genreshorizontal[index])
      ),
    );
  }
}

class GenreHorizontalCard extends StatelessWidget {
  final String genre;

  const GenreHorizontalCard({Key key, this.genre}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       Navigator.pushNamed(context, "/$genre");

      },
          child: Container(
        margin: EdgeInsets.only( left: 14),
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all( 
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(20),
      ),
        child: Text(
          genre,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16
        ) ,
        ),
      ),
    );
  }
}


