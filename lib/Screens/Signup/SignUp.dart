import 'package:castllyv2/Screens/Signup/components/signupbody.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody()
    );
  }
}