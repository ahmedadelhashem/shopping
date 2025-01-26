import 'package:flutter/material.dart';
import 'package:market/screen/bodylogin.dart';
import 'package:market/screen/headerlogin.dart';
import 'package:market/screen/icon.dart';
import 'package:market/screen/sign_in.dart';

class LoginIn extends StatelessWidget {
  LoginIn({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
             const  headerlogin(),
             const bodylogin(),
             const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/navbar');
                  },
                  child:const Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
              middle(),
              const  SizedBox(
                height: 50,
              ),
           const   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 icons(image: 'image/google.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  icons(image: 'image/facebook.jpg',),
                   SizedBox(
                    width: 10,
                  ),
                  icons(image: 'image/apple.jpg')
                ],
              ),
              const SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             const Text('Don\'t have an account ?'),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/signin');
                //  GoRouter.of(context).push('/signin');
              }, child: Text('Register now',style: TextStyle(color: Colors.blue),))
            ],)
            ],
          ),
        ),
      ),
    );
  }
}
