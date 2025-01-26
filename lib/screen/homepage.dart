import 'package:flutter/material.dart';
import 'package:market/const/Mybutton.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag,
            size: 50,
            color: Theme.of(context).colorScheme.inversePrimary,),
        
           const SizedBox(height: 10,),
        
          const  Text('Einkaufen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        
           const SizedBox(height: 10,),
        
            Text("Produkt in Premiumqualität",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 15),),
        
           const SizedBox(height: 10,),
        
            MyButton(
              onTap: (){
                //  GoRouter.of(context).pushNamed(AppRouter.Kshoppage);
                // Navigator.pushNamed(context,'/shoppage');
                Navigator.pushNamed(context,'/loginIn');
              },
              child: Icon(Icons.arrow_forward_outlined),
              
            )
          ],
        ),
      ),
    );
  }
}