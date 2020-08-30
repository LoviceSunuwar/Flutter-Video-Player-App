
import 'package:castllyv2/Screens/genre/genre.dart';
import 'package:castllyv2/Screens/genrescreen/Action/action.dart';
import 'package:castllyv2/Screens/genrescreen/Adventure/adventure.dart';
import 'package:castllyv2/Screens/genrescreen/ChickFlick/chickflick.dart';
import 'package:castllyv2/Screens/genrescreen/Comedy/comedy.dart';
import 'package:castllyv2/Screens/genrescreen/Crime/crime.dart';
import 'package:castllyv2/Screens/genrescreen/Documentries/documentries.dart';
import 'package:castllyv2/Screens/genrescreen/Drama/drama.dart';
import 'package:castllyv2/Screens/genrescreen/Education/education.dart';
import 'package:castllyv2/Screens/genrescreen/Historical/historical.dart';
import 'package:castllyv2/Screens/genrescreen/Horror/horror.dart';
import 'package:castllyv2/Screens/genrescreen/HumanKind/humankind.dart';
import 'package:castllyv2/Screens/genrescreen/Kids/kids.dart';
import 'package:castllyv2/Screens/genrescreen/Musical_Dance/Musical_Dance.dart';
import 'package:castllyv2/Screens/genrescreen/Reality_TVshows/reality_tvshow.dart';
import 'package:castllyv2/Screens/genrescreen/Romance_Love/romance_love.dart';
import 'package:castllyv2/Screens/genrescreen/Science/science.dart';
import 'package:castllyv2/Screens/genrescreen/Series/series.dart';
import 'package:castllyv2/Screens/genrescreen/ShortFilms/shortfilms.dart';
import 'package:castllyv2/Screens/genrescreen/Thriller/thriller.dart';
import 'package:castllyv2/Screens/genrescreen/Ubuntu/ubuntu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

//here enum is used to store the string constants so that is makes easir to get and reduce the typos down the road
//  and get the string from enum using  describeEnum() function like this
// describeEnum(nameOfTheRoutes.demoScreen),

enum nameOfTheRoutes {
  demoScreen,
  movieGenre,
  homeScreen,
  loginScreen,
}

/// the Routes
class Routes {
  static Map<String, Widget Function(BuildContext)> get getRoutes => {
        //this is if you don't need to pass the arguments
        "/routeName":(context)=> Text("this is simple named route implementation send screen in place of text"),
        "/Action" :(context)=> ActionScreen(),
        "/Adventure" : (context)=> AdventureScreen(),
        "/ChickFlick" :(context)=> ChickFlickScreen(),
        "/Comedy" :(context)=> ComedyScreen(),
        "/Crime":(context)=> CrimeScreen(),
        "/Documentries" :(context)=> DocumentriesScreen(),
        "/Drama":(context)=>  DramaScreen(),
        "/Education" :(context)=> EducationScreen(),
        "/Historical" :(context)=> HistoricalScreen(),
        "/Horror" :(context)=> HorrorScreen(),
        "/HumanKind" :(context)=>  HumanKindScreen(),
        "/Kids" :(context)=> KidsScreen(),
        "/Musical" :(context)=> MusicalDanceScreen(),
        "/Reality" :(context)=> RealityScreen(),
        "/Romance" :(context)=>  RomanceScreen(),
        "/Science" :(context)=> ScienceScreen(),
        "/Series" :(context)=> SeriesScreen(),
        "/ShortFilms" :(context)=> ShortFilmsScreen(),
        "/Thriller" :(context)=>  ThrillerScreen(),
        "/Ubuntu" :(context)=> UbuntuScreen(),
        "/SeeAll" :(context)=>  GenreScreen(),
        "/${describeEnum(nameOfTheRoutes.demoScreen)}": (context) {
          //this is used so that the values can be passed from 1st screen to 2nd screen
          //from 1st screen value is passed using arguments parameter
          //like this
          // Navigator.pushNamed(context, describeEnum(nameOfTheRoutes.demoScreen), arguments: arguments);

          var args = ModalRoute.of(context).settings.arguments as String;
          return Text(
              "this is screen and this is test args that you can pass to other screen $args");
        },

       
      };
}
