
import 'package:flutter/material.dart';

class bodydrawer extends StatelessWidget {
   bodydrawer({super.key, required this.title, required this.icon, this.onTap});

  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                padding: EdgeInsets.only(left: 20,),
                child: Divider(
                  color: Colors.white24,
                  height: 1,
                ),
              ),
              ListTile(
                onTap: onTap,
                leading: Icon(icon,color: Colors.white,),
              title: Text(title,style: TextStyle(color: Colors.white),),
              ),
      ],
    );
  }
}
