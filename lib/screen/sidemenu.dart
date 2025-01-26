import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';


class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key, });
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  infocard(),
                  SizedBox(height: 20,),
                  Text('Brower',style: TextStyle(fontSize: 20, color: Colors.grey),),
                  SizedBox(height: 20,),
                   bodydrawer(title: 'Home',icon:Icons.home,onTap: () {
                     Navigator.pushNamed(context,'/shoppage');
                   },),
                   bodydrawer(title: 'search', icon: Icons.search),
                   bodydrawer(title: 'Favourite', icon: Icons.star,onTap: () {
                   GoRouter.of(context).push('/favourite',);
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


class infocard extends StatelessWidget {
  const infocard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: CircleAvatar(
      child: Icon(Icons.person,color: Colors.black,), 
    ),
    title: Text('Ahmed Adel',style: TextStyle(color: Colors.white),),
    subtitle: Text('ahmed.adel@gmail.com',style: TextStyle(color: Colors.white),),
    );
  }
}