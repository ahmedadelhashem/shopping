import 'package:flutter/material.dart';
import 'package:market/screen/otptextfield.dart';

class otpverification extends StatelessWidget {
  const otpverification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
                  'OTP Verification',
                  style: TextStyle(color: Colors.grey[700]),
                ),
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text('OTP Verification',
                  style: TextStyle(color: Colors.black, fontSize: 28)),
              Text('We sent your code to +010123***14'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This code will expired in 00:30'),
                  //  buildtimer(),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldotp(),
                  SizedBox(
                    width: 20,
                  ),
                  TextFieldotp(),
                     SizedBox(
                    width: 20,
                  ),
                  TextFieldotp(),
                     SizedBox(
                    width: 20,
                  ),
                  TextFieldotp(),
                       SizedBox(
                    width: 20,
                  ),
                  TextFieldotp(),
                ],
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: GestureDetector(
                      onTap:(){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 165, 84, 33),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Center(child: Text('Continue',style: TextStyle(fontSize: 20,color: Colors.white),)))),
              ),
              SizedBox(height: 20,),
              GestureDetector(child: Text('Resend OTP Code',style: TextStyle(decoration: TextDecoration.underline),))
            ],
          ),
        ),
      )),
    );
  }
}

class buildtimer extends StatelessWidget {
  const buildtimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30, end: 0),
      duration: Duration(seconds: 30),
      builder: (context, value, child) {
        return Text('00:${value.toInt()}');
      },
      onEnd: () {},
    );
  }
}
