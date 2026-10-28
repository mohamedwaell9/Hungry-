import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';

class VisaBuilder extends StatelessWidget {
  const VisaBuilder({
    super.key,
    required this.image,
    required this.title,
    required this.color,
  });
  final String image;
  final Widget title;
  final Color color;

  static final ValueNotifier<String?> _selectedVisa = ValueNotifier<String?>(
    null,
  );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: _selectedVisa,
      builder: (context, selectedVisa, child) {
        final isSelected = selectedVisa == image;
        final indicatorColor = color == Appcolor.dark
            ? Colors.white
            : Appcolor.dark;

        return GestureDetector(
          onTap: () {
            _selectedVisa.value = isSelected ? null : image;
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(image, width: 70, height: 70),
                Gap(10),
                title,
                Spacer(),
                Container(
                  padding: EdgeInsets.all(2),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: indicatorColor, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: isSelected
                        ? indicatorColor
                        : Colors.transparent,
                    foregroundColor: indicatorColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
