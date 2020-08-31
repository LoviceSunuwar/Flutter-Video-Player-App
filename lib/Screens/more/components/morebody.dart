import 'package:castllyv2/Screens/Components/tab_login_signup.dart';
import 'package:castllyv2/Screens/account/account.dart';
import 'package:castllyv2/Screens/boughtmovie/boughtmovie.dart';
import 'package:castllyv2/Screens/changepassword/changepassword.dart';
import 'package:castllyv2/Screens/more/components/morebackground.dart';
import 'package:castllyv2/Screens/more/components/moregrid.dart';
import 'package:castllyv2/Screens/paymentlogs/paymentlogs.dart';
import 'package:castllyv2/Screens/search/components/searchbackground.dart';
import 'package:flutter/material.dart';

class MoreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MoreBackground(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("assets/images/logo/rectanglepinklogo.jpeg"))
            //   ),
            // ),
             Padding(
               padding: EdgeInsets.only(
                 top: 40
               ),
               child: Container(
                 height: 200,
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     SizedBox(
                       width: 20,
                     ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          
                     Image(image: AssetImage("assets/images/logo/Circlelogo.png"),
                     height: 120,
                     ),
                      SizedBox(
                        height: 10,
                      ),
                     Text("@Account",
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w700,
                       color: Colors.white
                     ),
                     ),
                     SizedBox(
                        height: 10,
                      ),
                      Text("@Username",
                      style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: Colors.white
                     ),)
                        ],
                      ),
                    ),
                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        child: Image(image: AssetImage("assets/images/extra/qr.png",),
                        height: 180,
                        width: 170,
                        )
                          
                        ),

                   ],
                 ),
               ),
             ),
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new ChangePassword())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.lock_open, size: 30),
                    SizedBox(
                      width: 100,
                    ),
                    Text("Change Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
              
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed:  (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new Account())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.account_balance_wallet, size: 30),
                     SizedBox(
                      width: 100,
                    ),
                    Text("Account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
                    
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed:  (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new BoughtmovieScreen())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.shopping_cart, size: 30),
                    SizedBox(
                      width: 100,
                    ),
                    Text("My Purchases",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
              
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new BoughtmovieScreen())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.watch_later, size: 30),
                     SizedBox(
                      width: 100,
                    ),
                    Text("Watch Later",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
              
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new PaymentLogs())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.monetization_on, size: 30),
                    SizedBox(
                      width: 100,
                    ),
                    Text("Payment Logs",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
              
                    SizedBox(
                      height: 20,

                    ),

              FlatButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new LoginTab())
                        );
        }, child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.power_settings_new, size: 30),
                     SizedBox(
                      width: 100,
                    ),
                    Text("Log out",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    )

                  ],
                ),
              )),
        

          ],
        ),
      ));
  }
}

