import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:market/const/text_field.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 5,),
                  Text(
                    "Forget Password",
                    style: TextStyle(fontSize: 25),
                  ),
                  
                ],
              ),
            ),
            SizedBox(
              height: 30  ,
            ),
            Center(
                child: Text(
              'Enter your Email or phone and we will \nsend your password on phone or email',
              style: TextStyle(color: const Color.fromARGB(255, 58, 57, 57)),
            )),
            SizedBox(
              height: 60,
            ),
            MyTextField(
              hinttext: 'Write to Email or phone ',
              obscur: false,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,'/OTP');
                },
                child: const Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
