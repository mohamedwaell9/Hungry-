import 'package:flutter/material.dart';
import 'package:hungry/core/constants/colors.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        cursorColor: Appcolor.primary,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,color: Color(0xff3C2F2F),),
          hint: Text(
            "Search",
            style: TextStyle(
              color: Color(0xff3C2F2F),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 20),
          ),
        ),
      ),
    );
  }
}
