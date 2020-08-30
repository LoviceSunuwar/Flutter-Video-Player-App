import 'package:castllyv2/Screens/Components/tab_login_signup.dart';
import 'package:castllyv2/Screens/forgotpassword/components/forgotpasswordbackground.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ForgotPasswordBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Container(
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/logo/rectanglepinklogo.jpeg"))),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember your password ?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new LoginTab()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
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
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your Email Address",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Container(
            height: 45,
            width: size.width * 0.95,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            child: FlatButton(onPressed: (){},
             child: Center(child: Text("Look Up"))),
          )
        ],
      ),
    );
  }
}
