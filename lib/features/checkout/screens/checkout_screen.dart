import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/checkout/widgets/checkout_builder.dart';
import 'package:hungry/features/checkout/widgets/visa_builder.dart';
import 'package:hungry/widgets/main_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
          padding: const EdgeInsets.only(right: 15, left: 15, bottom: 130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order summary",
                style: TextStyle(
                  color: Appcolor.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(20),

              CheckoutBuilder(title: "Order", price: "\$16.48"),
              Gap(5),
              CheckoutBuilder(title: "Taxes", price: "\$0.3"),
              Gap(5),
              CheckoutBuilder(title: "Delivery fees", price: "\$1.5"),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(height: 40, thickness: 0.5),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        color: Appcolor.dark,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$18.19",
                      style: TextStyle(
                        color: Appcolor.dark,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Estimated delivery time:",
                      style: TextStyle(
                        color: Appcolor.dark,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "15 - 30 mins",
                      style: TextStyle(
                        color: Appcolor.dark,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              Gap(70),

              Text(
                "Payment methods",
                style: TextStyle(
                  color: Appcolor.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(20),

              VisaBuilder(
                color: Appcolor.dark,
                image: Appimages.dollar,
                title: Text(
                  "Cash on Delivery",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Gap(20),
              VisaBuilder(
                image: Appimages.visa,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Debit card",
                      style: TextStyle(
                        color: Appcolor.dark,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "3566 **** **** 0505",
                      style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                color: Color(0xffF3F4F6),
              ),

              Gap(3),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    color: Color(0xffEF2A39),
                  ),
                  Text(
                    "Save card details for future payments",
                    style: TextStyle(
                      color: Color(0xff808080),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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
                  "Total Price",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff808080),
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
              onPress: () {
                showDialog(
                  context: context,
                  builder: (builder) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 200,
                        horizontal: 35,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 50,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFF9F9),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 47,
                              spreadRadius: -8,
                              offset: Offset(0, 19),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Appcolor.primary,
                              foregroundColor: Appcolor.primary,
                              child: Icon(
                                Icons.check_rounded,
                                size: 90,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10),
                            Text(
                              "Success!",
                              style: TextStyle(
                                color: Appcolor.primary,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Gap(10),
                            Text(
                              textAlign: TextAlign.center,
                              "Your payment was successful.A receipt for this purchase has been sent to your email.",
                              style: TextStyle(
                                color: Color(0xffBCBBBB),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Spacer(),
                            main_button(
                              radius: 20,
                              height: 70,
                              width: 170,
                              backColor: Appcolor.primary,
                              borderColor: Appcolor.primary,
                              onPress: () {
                                Navigator.pop(context);
                              },
                              title: "Go Back",
                              titleStyle: TextStyle(
                                color: Color(0xffFFF9F9),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              title: "Pay Now",
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
