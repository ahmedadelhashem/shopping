import 'package:flutter/material.dart';
import 'package:market/screen/checlout.dart';
import 'package:provider/provider.dart';
import 'package:market/model/product.dart';
import 'package:market/model/shop.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key, });
 
  void removeitemfromCart(BuildContext context,Product product){
    showDialog(
      context: context, builder: 
    (context)=>AlertDialog(
      content: Text('Remoove this item to your cart?'),
      actions: [
        MaterialButton(onPressed: ()=>Navigator.pop(context),child: Text('Cancel'),),
        MaterialButton(onPressed: (){
          Navigator.pop(context);
          context.read<Shop>().removefromcart(product);
          },child: Text("OK"),)
      ],
      ));
  }

  @override
  Widget build(BuildContext context) {
      final carts = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/navbar');
        }, icon: Icon(Icons.arrow_back)),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Center(child: Text('Cart Page')),),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child:carts.isEmpty?Center(child: Text('Your Cart is Empty')): ListView.builder(
              itemCount: carts.length,
              itemBuilder: (context,index){
                final item =carts[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toString()),
                  trailing: IconButton(onPressed: (){
                    removeitemfromCart(context,item);
                  }, icon: Icon(Icons.remove)),
                );
              }),
          ),
          // ElevatedButton(onPressed: (){}, child: Text('checkout',style: TextStyle(color: Colors.white),),
          // style:ElevatedButton.styleFrom(
          //   padding: EdgeInsets.all(20),
          //   backgroundColor: Colors.black,
          //   side: BorderSide(width: 1,color: Colors.grey),
          checkout(),
          // )
          // ),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
