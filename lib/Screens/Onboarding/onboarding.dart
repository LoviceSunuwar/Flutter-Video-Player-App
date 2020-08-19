
import 'package:castllyv2/Screens/Components/tab_login_signup.dart';

import 'package:castllyv2/Screens/Onboarding/Components/sliderpage.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _onboardingpage = 0;
  PageController _onboardingcontroller = PageController();

  List<Widget> _onboardingpages = [
    SliderPage(
      title: "Welcome to Castlly",
      description:
          "We are here to serve you better service and get instant access to unlimited curated entertainment from your own favourite movie producers.",
      onboardingimage: "assets/images/onboardscreen/OnboardScreen.jpeg",
    ),
    SliderPage(
      title: "Endless Advantages",
      description:
          "Castlly provides you tons of advantages which you cannot refuse.",
      onboardingimage: "assets/images/onboardscreen/OnboardScreen2.jpeg",
    ),
    SliderPage(
      title: "Join the Community",
      description:
          "Join the comunity of cool movie fans and creators. Tell your own story and be a part of something new to have a chance to gow your own fanbase.",
      onboardingimage: "assets/images/onboardscreen/OnboardScreen3.jpeg",
    ),
    SliderPage(
      title: "No Hefty Subsciptions",
      description: "It's free for life, only pay for what you like.",
      onboardingimage: "assets/images/onboardscreen/OnboardScreen4.jpeg",
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _onboardingpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _onboardingcontroller,
            itemCount: _onboardingpages.length,
            onPageChanged: _onchanged,
            itemBuilder: (context, int index) {
              return _onboardingpages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List<Widget>.generate(_onboardingpages.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _onboardingpage) ? 30 : 10,
                    margin: EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                        color: (index == _onboardingpage)
                            ? Colors.pink
                            : Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                  );
                }),
              ),
              InkWell(
                onTap: () { 
                  
                  _onboardingcontroller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: InkWell(
                  onTap: (){
                    (
                    _onboardingpage == (_onboardingpages.length - 1)
                  ) ? 
                  Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                          new LoginTab())
                        ) :
                  
                  _onboardingcontroller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint) ;

                    
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 70,
                    alignment: Alignment.center,
                    width: (_onboardingpage == (_onboardingpages.length - 1))
                        ? 200
                        : 70,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(40)),
                    child: (_onboardingpage == (_onboardingpages.length - 1))
                        ? Text("Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))
                        : Icon(Icons.navigate_next,
                            color: Colors.white, size: 50),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
