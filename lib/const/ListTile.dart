import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  const MyListtile({super.key, required this.text, required this.icon, this.onTap});
 final String text;
 final IconData icon;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        leading:Icon(icon,color: Colors.grey,size: 30,) ,
        title:Text(text,style: TextStyle(fontSize: 20),) ,
        onTap: onTap,
      
      ),
    );
  }
}