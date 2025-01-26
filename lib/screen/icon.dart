
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class icons extends StatelessWidget {
  const icons({super.key, required this.image});
 final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }
}