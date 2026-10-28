import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/images.dart';

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({
    super.key, required this.image, required this.title, required this.desc, required this.rate,
  });
  final String image, title, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,
              style: TextStyle(
                color: Color(0xff3C2F2F),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              desc,
              style: TextStyle(
                color: Color(0xff3C2F2F),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(5),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xffFF9633), size: 17),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  rate,
                  style: TextStyle(
                    color: Color(0xff3C2F2F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
