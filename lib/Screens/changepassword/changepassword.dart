import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
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
                Container(
                  height: 1,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 30
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
                            hintText: "Enter your current password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                  height: 20
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
                            hintText: "Choose a new password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                  height: 20
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
                            hintText: "Repeat your new password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                  height: 20
                ),
                FlatButton(onPressed: (){
                  Fluttertoast.showToast(
                        msg: 'Password changed succesfully',
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        gravity: ToastGravity.CENTER,
                        fontSize: 15,
                        toastLength: Toast.LENGTH_SHORT);
                  }, child: Container(
                    height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Change Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                    ),
                  )
                ))
          ],
        ),
      ),
    );
  }
}