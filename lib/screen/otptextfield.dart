import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldotp extends StatelessWidget {
  const TextFieldotp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextField(
          decoration: InputDecoration(
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
    );
  }
}
