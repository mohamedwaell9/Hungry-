import 'package:flutter/material.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';

class ProductDetailsBuilder extends StatelessWidget {
  const ProductDetailsBuilder({
    super.key, required this.title, required this.image,
  });
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Appcolor.dark,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 12,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffEF2A39),
                  foregroundColor: Color(0xffEF2A39),
                  radius: 12,
                  child: Center(child: Icon(Icons.add,color: Colors.white,),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
