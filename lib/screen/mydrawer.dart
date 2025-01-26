import 'package:flutter/material.dart';
import 'package:market/screen/headerdrawer.dart';
import 'package:market/screen/sidemenu.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child:Container(
        width: 288,
        height: double.infinity,
        color: Color.fromARGB(255, 78, 78, 80),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  headerdrawer(),
                  SizedBox(height: 20,),
                  Text('Brower',style: TextStyle(fontSize: 20, color: Colors.white60),),
                  SizedBox(height: 20,),
                   bodydrawer(title: 'Home',icon:Icons.home,onTap: () {
                     Navigator.pushNamed(context,'/navbar');
                   },),
                   bodydrawer(title: 'search', icon: Icons.search),
                   bodydrawer(title: 'Favourite', icon: Icons.star,onTap: () {
                  //  GoRouter.of(context).push('/favourite',);
                   },),
                   bodydrawer(title: 'Help', icon: Icons.help_outline)
                ],
              ),
             
              bodydrawer(title: 'Logout', icon: Icons.logout,onTap: () {
                Navigator.pushNamed(context,'/loginIn');
              },)
            ],
          ),
        ),
      )
    );
  }
}



