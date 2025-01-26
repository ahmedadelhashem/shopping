import 'package:flutter/material.dart';

class headerdrawer extends StatelessWidget {
  const headerdrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: CircleAvatar(
      child: Icon(Icons.person,color: Colors.black,), 
    ),
    title: Text('Ahmed Adel',style: TextStyle(color: Colors.white),),
    subtitle: Text('Zamalek.sc@gmail.com',style: TextStyle(color: Colors.white),),
    );
  }
}
