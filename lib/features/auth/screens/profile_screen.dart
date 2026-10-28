import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/auth/widgets/custom_form_feild.dart';
import 'package:hungry/features/checkout/widgets/visa_builder.dart';
import 'package:hungry/widgets/main_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primary,

      appBar: AppBar(
        backgroundColor: Appcolor.primary,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Appcolor.primary,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: Icon(Icons.person, color: Colors.white, size: 80),
              ),
              Gap(30),
              CustomFormFeild(hint: "Mohamed", label: "Name"),
              Gap(20),
              CustomFormFeild(hint: "mohamed@gmail.com", label: "Email"),
              Gap(20),
              CustomFormFeild(hint: "55Dubai, UAE", label: "Delivery address"),
              Gap(20),
              CustomFormFeild(hint: "*******", label: "Password"),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  thickness: 1,
                  color: Color(0xffE8E8E8),
                  height: 70,
                ),
              ),
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
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            main_button(
              title: "Edit Profile",
              titleStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              radius: 20,
              height: 70,
              width: 150,
              onPress: () {},
              backColor: Appcolor.primary,
              borderColor: Appcolor.primary,
            ),
            main_button(
              title: "Log Out",
              titleStyle: TextStyle(
                color: Appcolor.primary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),

              radius: 20,
              height: 70,
              width: 150,
              onPress: () {},
              borderColor: Appcolor.primary,
              backColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
