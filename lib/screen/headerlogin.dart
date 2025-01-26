
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class headerlogin extends StatelessWidget {
  const headerlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const  SizedBox(
                height: 60,
              ),
          const    Center(
                  child: Icon(
                Icons.lock,
                size: 100,
              )),
         const     SizedBox(
                height: 50,
              ),
              Text(
                'Welcome back you \'ve been missed!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
         const     SizedBox(
                height: 25,
              ),
      ],
    );
  }
}
