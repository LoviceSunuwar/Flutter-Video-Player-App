import 'package:castllyv2/Screens/Login/login.dart';
import 'package:castllyv2/Screens/Signup/SignUp.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatefulWidget {
  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> with SingleTickerProviderStateMixin {
  
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: Container(
       // height: 250,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo/rectanglepinklogo.jpeg"))
                  ),
                ),
                 SizedBox(
                  height: 30
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20
                  ),
                  child: Center(
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                          text: "By signing, you agree to the ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: <TextSpan> [
                            TextSpan(
                              text: "Castlly Terms and conditions and license agreements ",
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: "which can be found on the Castlly website.",                   
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black
                              )
                            )
                          ]
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.pink,
                    //isScrollable: true,
                    
                    tabs: [
                      Tab(
                        child:  Container(
                          height: 30,
                          child: Text("Sign In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                          ),
                          ),
                        ),
                      ),
                      Tab(
                         child:  Container(
                           height: 30,
                          child: Text("Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                          ),
                          ),
                        ),
                      )
                    ])
                ),
                Container(
                  height: 475,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      // Container(
                      //   color: Colors.blue,

                      // ),
                      // Container(
                      //   color: Colors.yellow,

                      // ),
                     Login(),
                     SignUp()
                    ],),
                )
                
              ],
            ),
          ),
        ),
    );
  }
}