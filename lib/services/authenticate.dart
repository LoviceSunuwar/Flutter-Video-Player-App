
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

 signin(email, password) async {
   
    try {
      Response response = await dio.post(
        
        'https://creator.castlly.com/api/auth/app/login',
         data: {
        "email": email,
        "password": password
      }, 
      
      options: Options(contentType: Headers.formUrlEncodedContentType)
      
      );
      print(response);
    }
    on DioError catch(e) {
      print(e);
      Fluttertoast.showToast(msg: e.response.data['msg'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 15,
      );
      
    }
    
  }
  

}