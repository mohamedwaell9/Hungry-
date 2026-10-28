import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/cart/widgets/cart_builder.dart';
import 'package:hungry/widgets/main_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CartBuilder> cart = [
      CartBuilder(
        image: Appimages.sandwich,
        counter: "2",
        title: "Hamburger",
        desc: "Wendy's Burger",
      ),
      CartBuilder(
        image: Appimages.sandwich2,
        counter: "4",
        title: "Hamburger",
        desc: "Chicken Burger",
      ),
      CartBuilder(
        image: Appimages.sandwich3,
        counter: "3",
        title: "Hamburger",
        desc: "Fried Chicken Burger",
      ),
      CartBuilder(
        image: Appimages.splash,
        counter: "1",
        title: "Hamburger",
        desc: "Veggie Burger",
      ),
      CartBuilder(
        image: Appimages.sandwich,
        counter: "2",
        title: "Hamburger",
        desc: "Wendy's Burger",
      ),
      CartBuilder(
        image: Appimages.sandwich2,
        counter: "4",
        title: "Hamburger",
        desc: "Chicken Burger",
      ),
      CartBuilder(
        image: Appimages.sandwich3,
        counter: "3",
        title: "Hamburger",
        desc: "Fried Chicken Burger",
      ),
      CartBuilder(
        image: Appimages.splash,
        counter: "1",
        title: "Hamburger",
        desc: "Veggie Burger",
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 130),
          child: Column(
            children: [
              Gap(50),
              ...cart,
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: 120,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3C2F2F),
                  ),
                ),
                Gap(5),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$",
                        style: TextStyle(
                          color: Appcolor.primary,
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "99.19",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            main_button(
              width: 200,
              height: 70,
              radius: 20,
              onPress: () {},
              title: "Checkout",
              titleStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
