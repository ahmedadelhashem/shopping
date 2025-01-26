import 'package:flutter/material.dart';
import 'package:market/const/My_product.dart';
import 'package:market/model/shop.dart';
import 'package:market/screen/mydrawer.dart';
import 'package:provider/provider.dart';

class shoppage extends StatelessWidget {
  const shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text('Shop Page')),
      ),
      drawer: Mydrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('Selected List of premium product',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 20)),
            ),
                        SizedBox(
              height: 10,
            ),
            AspectRatio(aspectRatio: 3,
            child: Image.asset('image/sale.jpg'),),
            SizedBox(
              height: 10,
            ),            SizedBox(
              // width: 500,
              height: 460,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 1),
                  // padding: EdgeInsets.all(10),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return MyProducttitle(product: product);
                  }),
            ),
          ],
        ),
    ) ;
  }
}

