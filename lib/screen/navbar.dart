import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market/screen/cartpage.dart';
import 'package:market/screen/profile.dart';
import 'package:market/screen/shoppage.dart';




class navbar extends StatefulWidget {
  const navbar({super.key, });
  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  
  @override
  int selectedIndex = 0;
  List<Widget> pages=const[
    shoppage(),
     Cartpage(),
    Profile(),

  ];
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:Container(
        
       color: Colors.black,
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: GNav(
           tabBorderRadius: 2,
          // tabBorder:Border(
          //   bottom: BorderSide(width: 10),
          //   left: BorderSide(width: 16)
          // ) ,
             backgroundColor: Colors.black,
          color: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 6,
         activeColor:Colors.white ,
          padding: EdgeInsets.all(10),
          tabs: [
          GButton(icon: Icons.home,text: 'Home',),
          GButton(icon: Icons.payment,text: 'Checkout',),
          GButton(icon: Icons.perm_contact_cal_outlined,text: 'Profile',),
          // GButton(icon: Icons.settings,text: 'setting',),
        
        ],
          selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
        ),
      )
    ) ,
      body: pages[selectedIndex]
    );
  }
}


