import 'package:flutter/material.dart';
import 'package:hungry/core/constants/colors.dart';


class main_button extends StatelessWidget {
  const main_button({
    super.key,
    this.title,
    required this.onPress,
    this.backColor,
    this.borderColor,
    this.child,
    this.width,
    this.height,
    this.titleStyle,
    this.radius,
  });
  final String? title;
  final Widget? child;
  final Color? backColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? titleStyle;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor ?? Appcolor.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? Appcolor.primary,width: 3),
            borderRadius: BorderRadiusGeometry.circular(radius ?? 8),
          ),
        ),
        onPressed: onPress,
        child:
            child ??
            Text(
              title ?? "",
              style: titleStyle,
            ),
      ),
    );
  }
}
