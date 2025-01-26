import 'package:flutter/material.dart';
import 'package:market/screen/listprofile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 22)),
                Icon(
                  Icons.notifications,
                  size: 25,
                  color: Colors.grey[600],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 160,
             child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              backgroundImage: ExactAssetImage('image/person.jpeg',scale: 1)
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 10,
                color: Colors.white70
              )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ahmed adel',style:TextStyle(color: Colors.grey[800],fontSize: 24,fontWeight: FontWeight.w800) ,),
            SizedBox(width: 5,),
          Icon(Icons.verified)
          ],),
          Text('Zamalek.sc@gmail.com',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500),),
          SizedBox(height: 30,),
          listprofile(title: 'Settings', icon: Icons.settings,),
          listprofile(title: 'notifications', icon: Icons.notifications,),
          listprofile(title: 'FAQs', icon: Icons.chat,),
          listprofile(title: 'Share', icon: Icons.share,),
          listprofile(title: 'Loug out', icon: Icons.logout)
        ],
      ),
    ));
  }
}
