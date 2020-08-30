import 'package:castllyv2/Screens/buypage/buypage.dart';
import 'package:castllyv2/Screens/moviedetail/components/background.dart';
import 'package:castllyv2/data/movie.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MovieBody extends StatelessWidget {
  final Movie movie;

  const MovieBody({Key key, this.movie}) : super(key: key);
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
                    height: size.height * 0.5,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: size.height * 0.7 - 50,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.only(
                              //   bottomLeft: Radius.circular(50),
                              //   bottomRight: Radius.circular(50)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(movie.poster))),
                        ),
                        // Positioned(
                        //   bottom: 30,
                        //   right: 0,
                        //   child: GestureDetector(
                        //     onTap: (){},
                        //                       child: Container(
                        //       width: size.width * 0.5,
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //         color: Colors.lightGreen[500],
                        //         borderRadius: BorderRadius.only(
                        //           bottomLeft: Radius.circular(50),
                        //           topLeft: Radius.circular(50),
                        //         ),
                        //         // boxShadow: [
                        //         //   BoxShadow(
                        //         //     offset: Offset(0, 5),
                        //         //     blurRadius: 50,
                        //         //     color: Colors.grey
                        //         //   )
                        //         // ]
                        //       ),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: <Widget>[
                        //           Text("\$${movie.price} | BUY NOW",
                        //           style: TextStyle(
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold
                        //           ),),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          movie.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text("Time: ${movie.time} Minutes"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Size: ${movie.size} MB")
                          ],
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
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
            BuyContainer(size: size, movie: movie)
          ],
        ),
      ),
    );
  }
}

class BuyContainer extends StatelessWidget {
  const BuyContainer({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                buyDialog(context);
              },
              child: Container(
                width: size.width * 0.7,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "\$${movie.price} | BUY NOW",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 64,
              width: 64,
              child: FlatButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Added to Watch Later',
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        gravity: ToastGravity.CENTER,
                        fontSize: 15,
                        toastLength: Toast.LENGTH_SHORT);
                  },
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.timer,
                    size: 30,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Future<bool> buyDialog(context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              FlatButton(
                  onPressed: () {
                    cardPay(context);
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Pay with card",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
                  )),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                  onPressed: null,
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Continue to make payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    child: Text("Insufficient credits?"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  onPressed: null,
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Center(
                        child: Text(
                      "Load funds",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        onPressed: null,
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                          ),
                          child: Center(
                            child: Text(
                              "Gift for a friend",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )),
                    Container(
                      height: 150,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/extra/gift.jpg"))),
                    ),
                  ],
                ),
              ),
              Align(
                child: Center(
                  child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text("Cancel",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                        ),
                        ),
                      ),
                ),
              )

            ],
          ),
        ),
      );
    },
  );
}

Future<bool> cardPay(context) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
                      child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Center(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter your card",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/extra/atm.jpg"))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Center(
                      child: Container(
                        height: 20,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Card",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          child: Icon(Icons.credit_card),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "xxxx xxxx xxxx xxxx",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text("Cancel",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                        ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 40
                        ),
                        child: GestureDetector(
                          onTap: (){},
                          child: Text("Done",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue
                          ),
                          ),
                        ),
                      ),
                    ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
