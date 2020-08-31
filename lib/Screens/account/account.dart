import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        color: Colors.white,
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
                  width: size.width * 0.9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Your account balance : \$50",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20
                      ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      child: Center(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "You can load credits to your account by contacting Castlly Support",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}