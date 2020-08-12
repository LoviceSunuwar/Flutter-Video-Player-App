import 'package:castllyv2/Screens/Signup/components/signupbackground.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingupBG(
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 475,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: size.width * 0.95,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your email address",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: size.width * 0.95,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Choose a username",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  
                  Container(
                    height: 60,
                    width: size.width * 0.95,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Choose a strong password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  
                  InkWell(
                    onTap: null,
                    child: Container(
                      height: 50,
                      width: size.width * 0.95,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ), 
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
