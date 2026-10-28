import 'package:flutter/material.dart';

class CustomFormFeild extends StatelessWidget {
  const CustomFormFeild({
    super.key, required this.hint, required this.label,
  });

  final String hint, label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
      decoration: InputDecoration(
        hint: Text(
          hint,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Color(0xff808080),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
