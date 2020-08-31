import 'package:castllyv2/Screens/buypage/buypage.dart';
import 'package:castllyv2/Screens/moviedetail/components/background.dart';
import 'package:castllyv2/Screens/movieplayer/components/videoplayeritem.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MoviePlayerBody extends StatelessWidget {
  final Movie movie;

  const MoviePlayerBody({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MovieBackground(
      child: Container(
        height: size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //LogoBarTop(),
                  Container(
                    height: 400,
                    child: VideoItem(
            videoPlayerController: VideoPlayerController.asset(
              "assets/videos/dummy.mp4",
            ),
            looping: true,
          ),
                  ),

                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                      bottom: BorderSide(width: 2.0, color: Colors.pink),
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                          child: Container(
                            width: size.width * 0.6,
                            child: Text(movie.title, 
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.black
                            ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 70,
                            width: size.width * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.blue
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  size: 40,
                                ),
                                Text("${movie.time} Min", 
                                style: TextStyle(
                                  fontSize: 16
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 70,
                            width: size.width * 0.171,
                            decoration: BoxDecoration(
                      border: Border(
                      left: BorderSide(width: 1.0, color: Colors.black),
                      ),
                      color: Colors.yellow
                    ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.view_agenda,
                                  size: 40,
                                ),
                                Text("${movie.size} MB", 
                                style: TextStyle(
                                  fontSize: 16
                                ),
                                )
                              ],
                            ),
                          ),
                        )      

                      ],
                    )
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Text(movie.desc),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      child: Text(
                        "Comments",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Username: ${movie.comment}",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                ),
                                height: 80,
                                width: size.width * 0.65,
                                child: TextField(
                                  maxLength: 50,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Comment your thoughts",
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 64,
                                width: 64,
                                child: FlatButton(
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(
                                      //   builder: (context) =>
                                      //     new VideoPlayer())
                                      //   );
                                    },
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
