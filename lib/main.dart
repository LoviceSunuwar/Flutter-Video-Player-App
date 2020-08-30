import 'package:castllyv2/Screens/Onboarding/onboarding.dart';
import 'package:castllyv2/Screens/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Castlly V2',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
       routes: Routes.getRoutes,
    );
  }
}
