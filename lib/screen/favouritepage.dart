import 'package:flutter/material.dart';
import 'package:market/model/product.dart';
import 'package:market/model/shop.dart';
import 'package:provider/provider.dart';

class Favouritepage extends StatelessWidget {
  const Favouritepage({super.key,required this.product, });
    final  Product product;

  @override
  Widget build(BuildContext context) {
       
    return Scaffold(
      appBar: AppBar(title: Text('Favourites'),),
      body:bodyfavourite(product: product) 
    );
  }
}

class bodyfavourite extends StatelessWidget {
  const bodyfavourite({super.key, required this.product});
   final Product product;

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
     final favouritee = Provider.of<Shop>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(product.image)),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            IconButton(
                onPressed: () {
                  favouritee.toggleFavourite(product);
                },
                icon: favouritee.isExist(product)
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_border)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          product.decription,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ],
    );
  }
}