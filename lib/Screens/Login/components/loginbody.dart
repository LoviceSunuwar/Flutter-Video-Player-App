
import 'package:castllyv2/Screens/Login/components/loginbackgound.dart';
import 'package:castllyv2/services/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginBody extends StatelessWidget {

  var email, password, token;
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
                        onChanged: (val) {
                          email = val;
                        },
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
                         onChanged: (val) {
                          password = val;
                        },
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
                    onTap: (){
                      AuthService().signin(email, password).then((val) {
                        if (val.data['success']) {
                          token = val.data['token'];
                          Fluttertoast.showToast(msg: 'Welcome',
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                          fontSize: 15,
                          toastLength: Toast.LENGTH_SHORT
                          );
                        }
                      });
                    },
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
