
import 'package:flutter/material.dart';
import 'package:market/model/shop.dart';
import 'package:market/screen/payment.dart';
import 'package:provider/provider.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
     final x = context.watch<Shop>().calculateTotal();
     final item =x;
    return Padding(
      padding: EdgeInsets.all(5),

      child: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.black
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text('Total Price',style: TextStyle(color: Colors.white),),
                Text(r'$'+item.toString(),style: TextStyle(color: Colors.amber),)
              ],
            ),
            Spacer(),
            GestureDetector(onTap: (){
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                context: context, builder: (context){
                return PaymentMethodsBottomsheet();
              });
            },
            child: Text('checkout',style: TextStyle(color: Colors.white),),)
          ],
        ),
      ),
    );
  }
}
