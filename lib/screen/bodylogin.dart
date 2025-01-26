
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:market/const/text_field.dart';

class bodylogin extends StatefulWidget {
  const bodylogin({super.key});

  @override
  State<bodylogin> createState() => _bodyloginState();
}

class _bodyloginState extends State<bodylogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     const   MyTextField(hinttext: 'UserName', obscur: false),
       const       SizedBox(
                height: 10,
              ),
       const       MyTextField(
                hinttext: 'Password',
                obscur: true,
              ),
       const       SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, '/Forget');  
                      },
                      child: Container(
                        child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
