import 'package:castllyv2/Screens/Components/tab_login_signup.dart';
import 'package:castllyv2/Screens/Login/components/loginbackgound.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
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
                        style: TextStyle(fontSize: 15),
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
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.centerRight,

                      child: InkWell(
                        onTap: null,
                        child: Text("Forgot your password ?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        ),),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                        child: Text("Sign In",
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
