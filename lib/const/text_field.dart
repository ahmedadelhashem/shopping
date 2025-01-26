import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, this.controller, required this.hinttext, required this.obscur});
 final controller;
 final String hinttext;
 final bool obscur;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: controller,
                  obscureText: obscur,
                  decoration: InputDecoration(
                    hintText: hinttext,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.grey.shade200,
                  filled: true
                ),),
              );
  }
}