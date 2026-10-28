import 'package:flutter/material.dart';

class CheckoutBuilder extends StatelessWidget {
  const CheckoutBuilder({
    super.key, required this.title, required this.price,
  });
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff7D7D7D),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: Color(0xff7D7D7D),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
