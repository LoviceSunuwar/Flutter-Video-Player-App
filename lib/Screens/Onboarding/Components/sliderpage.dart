import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {

  final String title;
  final String description;
  final String onboardingimage;

  const SliderPage({Key key, this.title, this.description, this.onboardingimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(onboardingimage,
           width: size.width* 0.6,
          ),
          SizedBox(
            height: 60,
          ),
          Text(title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 80
            ),
            child: Text(
              description, 
              style: TextStyle(
                height: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                letterSpacing: 0.7
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}