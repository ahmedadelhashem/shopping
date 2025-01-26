
import 'package:flutter/material.dart';

class PaymentMethodsBottomsheet extends StatefulWidget {
  const PaymentMethodsBottomsheet({super.key});

  @override
  State<PaymentMethodsBottomsheet> createState() => _PaymentMethodsBottomsheetState();
}

class _PaymentMethodsBottomsheetState extends State<PaymentMethodsBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 12,
          ),
          paymentmethod(),
          SizedBox(
            height: 12,
          ),
          // customButtomBlocConsumer()
        ],
      ),
    );
  }
}


class paymentmethod extends StatefulWidget {
  paymentmethod({super.key});

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  final List<String> paymentmethodItems = const [
    'image/Group.png',
    'image/paypal.png'
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentmethodItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeindex = index;
                  setState(() {});
                },
                child: PaymentItemMethod(
                    isActive: activeindex == index,
                    image: paymentmethodItems[index]),
              ),
            );
          }),
    );
  }
}
class PaymentItemMethod extends StatelessWidget {
  const PaymentItemMethod(
      {super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50,
              color:
                  isActive ? Color(0xFF34A853) : Colors.black.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}