import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/widgets/main_button.dart';

class CartBuilder extends StatefulWidget {
  const CartBuilder({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.counter,
  });

  final String image, title, desc, counter;

  @override
  State<CartBuilder> createState() => _CartBuilderState();
}

class _CartBuilderState extends State<CartBuilder> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = int.tryParse(widget.counter) ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.13),
            blurRadius: 17,
            spreadRadius: 0,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.image, width: 110, height: 100),
              Text(
                widget.title,
                style: TextStyle(
                  color: Appcolor.dark,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text(
                widget.desc,
                style: TextStyle(
                  color: Appcolor.dark,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          Column(
            children: [
              Row(
                spacing: 20,
                children: [
                  Container(
                    width: 39,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Appcolor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: _counter > 1
                          ? () => setState(() => _counter--)
                          : null,
                      icon: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(
                      color: Appcolor.dark,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    width: 39,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Appcolor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () => setState(() => _counter++),
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Gap(30),
              main_button(
                width: 145,
                height: 43,
                radius: 20,
                title: "Remove",
                titleStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                onPress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
