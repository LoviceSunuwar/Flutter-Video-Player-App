import 'package:flutter/material.dart';

class PaymentLogs extends StatefulWidget {
  @override
  _PaymentLogsState createState() => _PaymentLogsState();
}

class _PaymentLogsState extends State<PaymentLogs> {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
        title: Center(
          child: Text("Payment Logs",
          style: TextStyle(
            color: Colors.black
          ),
          ),
        )
      ),
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
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Text("\$10", 
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Wed Aug 05 2020",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Purchased : A Whisker Away"),
                      
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20
                ),
                Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Text("\$20", 
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Wed Aug 10 2020",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Purchased : Extraction"),
                      
                    ],
                  ),
                )

          ],
        ),
      ),
    );
  }
}