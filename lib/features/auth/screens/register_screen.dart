import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/auth/widgets/custom_text_feild.dart';
import 'package:hungry/widgets/main_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primary,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(120),
              SvgPicture.asset(Appimages.logo),
              Gap(10),
              Text(
                "Register! to discover delicious food",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Gap(30),
              CustomTextFeild(
                hint: "Name",
              ),
              Gap(20),
              CustomTextFeild(hint: "Email"),
              Gap(20),
              CustomTextFeild(
                hint: "Password",
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off, color: Appcolor.primary),
                ),
              ),
              Gap(20),
              CustomTextFeild(
                hint: "Confirm Password",
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off, color: Appcolor.primary),
                ),
              ),

              Gap(30),

              main_button(
                titleStyle: TextStyle(color: Appcolor.primary, fontWeight: FontWeight.bold,fontSize: 16),
                backColor: Colors.white,
                title: "Register",
                onPress: () {
                  
                },
                width: double.infinity,
                height: 60,
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}