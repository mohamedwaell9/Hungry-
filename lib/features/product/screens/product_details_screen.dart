import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/product/widgets/product_details_builder.dart';
import 'package:hungry/widgets/main_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double spicy = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded, color: Color(0xff3C2F2F)),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 15,left: 15,bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(Appimages.productDetails, width: 210),
                  ),
                  Gap(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Customise ",
                                style: TextStyle(
                                  color: Color(0xff3C2F2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Your Burger to Your Tastes. Ultimate Experience",
                                style: TextStyle(
                                  color: Color(0xff3C2F2F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(10),
                        Text(
                          "Spicy",
                          style: TextStyle(
                            color: Color(0xff3C2F2F),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Slider(
                          padding: EdgeInsets.zero,
                          activeColor: Appcolor.primary,
                          min: 0,
                          max: 1,
                          value: spicy,
                          onChanged: (v) {
                            setState(() {
                              spicy = v;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("🥶"), Text("🌶️")],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          
              Gap(20),
          
              Text(
                "Toppings",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3C2F2F),
                ),
              ),
          
              Gap(10),
          
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      7,
                      (index) => ProductDetailsBuilder(
                        title: "Tomato",
                        image: Appimages.tomato,
                      ),
                    ),
                  ],
                ),
              ),
          
              Gap(20),
          
              Text(
                "Side options",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3C2F2F),
                ),
              ),
              Gap(10),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      7,
                      (index) => ProductDetailsBuilder(
                        title: "Fries",
                        image: Appimages.fries,
                      ),
                    ),
                  ],
                ),
              ),
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
                        text: "18.19",
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
              title: "Add To Cart",
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
