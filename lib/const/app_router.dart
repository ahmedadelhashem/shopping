import 'package:go_router/go_router.dart';
import 'package:market/model/product.dart';
import 'package:market/screen/Login_in.dart';
import 'package:market/screen/favouritepage.dart';
import 'package:market/screen/homepage.dart';
import 'package:market/screen/otp.dart';
import 'package:market/screen/profile.dart';
import 'package:market/screen/navbar.dart';
import 'package:market/screen/shoppage.dart';
import 'package:market/screen/sign_in.dart';
abstract class AppRouter {
  
  static final router = GoRouter(routes: [
     GoRoute(path: '/', builder: (context, state) => Homepage()),
     GoRoute(path:  '/shoppage',builder: (context, state)=>shoppage(),),
     GoRoute(path: '/loginIn',builder: (context, state)=>LoginIn(),),
     GoRoute(path: '/signin',builder: (context, state)=>SignIn(),),
     GoRoute(path: '/profile',builder: (context, state)=>Profile(),),
     GoRoute(path: '/navbar',builder: (context, state)=>navbar(),),
     GoRoute(path: '/OTP',builder: (context, state)=>otpverification(),),
     GoRoute(path: '/favourite', builder: (context, state) =>Favouritepage (product: state.extra as Product,)),
    // GoRoute(path: '/Homeview', builder: (context, state) =>const Homeview()),
   
  ]);
}
