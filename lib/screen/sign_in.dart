import 'package:flutter/material.dart';
import 'package:market/const/text_field.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          const  SizedBox(height: 50,),
            const Center(
                  child: Icon(
                Icons.lock,
                size: 60,
              )),
             const SizedBox(height: 10,),
             const Text('Let\'s create an account for you',style: TextStyle(color: Colors.grey),),
           const SizedBox(height: 50,),
           const MyTextField(hinttext: 'UserName', obscur: false),
             const SizedBox(height: 10,),
           const MyTextField(hinttext: 'Phone', obscur: false),
            const SizedBox(height: 10,),
           const MyTextField(hinttext: 'Email', obscur: false),
            const SizedBox(height: 10,),
             const MyTextField(hinttext: 'Passward', obscur: true),
             const SizedBox(height: 10,),
             const MyTextField(hinttext: 'Confrim Passward', obscur: true), 
             const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  child:const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
              middle(),
              SizedBox(height: 25,),
              Text('Already have an account ?'),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Login now',style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}

class middle extends StatelessWidget {
  const middle ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(thickness: .5,color: Colors.grey[400],)),
                    Text('  Or Continue with  ',
                  style: TextStyle(color: Colors.grey[700]),),
                    Expanded(child: Divider(thickness: .5,color: Colors.grey[400],)),
                  ],
                ),
              );
  }
}
