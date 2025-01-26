import 'package:flutter/material.dart';
import 'package:market/screen/Forgetpassword.dart';
import 'package:market/screen/otp.dart';
import 'package:market/screen/profile.dart';
import 'package:market/screen/shoppage.dart';
import 'package:provider/provider.dart';
import 'package:market/model/shop.dart';
import 'package:market/screen/Login_in.dart';
import 'package:market/screen/homepage.dart';
import 'package:market/screen/navbar.dart';
import 'package:market/screen/sign_in.dart';
import 'package:market/themes/lightmode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (contex)=>Shop(),
    child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes: {
        '/homepage':(context)=>Homepage(),
        '/shoppage':(context)=>shoppage(),
        '/loginIn':(context)=>LoginIn(),
        '/signin':(context)=>SignIn(),
        '/profile':(context)=>Profile(),
        '/navbar':(context)=>navbar(),
        '/OTP':(context)=>otpverification(),
        '/Forget':(context)=>Forgetpassword()
      },
      theme:lightmode,
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
