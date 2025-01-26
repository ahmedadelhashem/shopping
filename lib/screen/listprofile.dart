
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listprofile extends StatelessWidget {
  const listprofile({super.key, required this.title, required this.icon});
 final String title;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.grey[600],
                  size: 20,
                ),
                SizedBox(width: 15,),
                Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Icon(Icons.arrow_forward_ios,  color: Colors.grey[600],
                  size: 20,)
          ],
        ),
      ),
    );
  }
}
