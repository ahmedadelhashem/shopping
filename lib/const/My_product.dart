import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:market/model/product.dart';
import 'package:market/model/shop.dart';

class MyProducttitle extends StatelessWidget {
  const MyProducttitle({super.key, required this.product});
  final Product product;

  void addtocart(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text('Add this item to your cart?'),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().addtocart(product);
                  },
                  child: Text("OK"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(14)),
       margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerproduct(product: product),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r'$' + product.price.toString(),
                style: TextStyle(fontSize: 18),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                      onPressed: () {
                        addtocart(context);
                      },
                      icon: Icon(Icons.add))),
            ],
          )
        ],
      ),
    );
  }
}


class headerproduct extends StatelessWidget {
  const headerproduct({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
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
          height: 5,
        ),
        Text(
          product.decription,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ],
    );
  }
}
