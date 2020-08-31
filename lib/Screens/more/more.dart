import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:castllyv2/Screens/genre/genre.dart';
import 'package:castllyv2/Screens/homepage/homepage.dart';
import 'package:castllyv2/Screens/more/components/morebody.dart';
import 'package:castllyv2/Screens/search/search.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  
  int currentIndex;

  @override
  void initState() {
    
    super.initState();

    currentIndex = 3;
  }

  changePage(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: MoreBody(),

      bottomNavigationBar: BubbleBottomBar(
        
        opacity: 0.2,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        //borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        hasInk: false,
        inkColor: Colors.black12,
        hasNotch: false,
        //fabLocation: BubbleBottomBarFabLocation.end,
        onTap: changePage,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.pink,
            icon: InkWell(
              onTap: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new HomepageScreen())
                        );
        },
              child: Icon(Icons.home, color: Colors.black)),
            activeIcon: Icon(Icons.home, color: Colors.pink),
            title: Text("Home"),
            
            ),
            BubbleBottomBarItem(
            backgroundColor: Colors.pink,
            icon: InkWell(
              onTap: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new GenreScreen())
                        );
        },
              child: Icon(Icons.remove_red_eye, color: Colors.black)),
            activeIcon: Icon(Icons.remove_red_eye, color: Colors.pink),
            title: Text("Browse"),
            
            ),
            BubbleBottomBarItem(
            backgroundColor: Colors.pink,
            icon: InkWell(
                onTap: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new SearchScreen())
                        );
        },
              child: Icon(Icons.search, color: Colors.black)),
            activeIcon: Icon(Icons.search, color: Colors.pink),
            title: Text("Search"),
            
            ),
            BubbleBottomBarItem(
            backgroundColor: Colors.pink,
            icon: InkWell(
              
              child: Icon(Icons.dashboard, color: Colors.black)),
            activeIcon: Icon(Icons.dashboard, color: Colors.pink),
            title: Text("More"),
            
            ),
        ], ),
    );
  }
}