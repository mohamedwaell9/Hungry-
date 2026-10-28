import 'package:flutter/material.dart';
import 'package:hungry/core/constants/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key, this.hint, this.suffix,
  });

  final String? hint;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Appcolor.primary,
      decoration: InputDecoration(
        suffixIcon: suffix,
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
