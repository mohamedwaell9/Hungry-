import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/core/constants/images.dart';
import 'package:hungry/features/home/widgets/home_builder.dart';
import 'package:hungry/features/home/widgets/search_feild.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List category = [
    "All",
    "Sliders",
    "Combos",
    "Classic",
    "Extra",
    "Sliders",
    "Combos",
    "Classic",
    "Extra",
  ];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            /// Appbar
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              Appimages.logo,
                              color: Appcolor.primary,
                              width: 200,
                            ),
                            Text(
                              "Hello, Rich Sonic",
                              style: TextStyle(
                                color: Color(0xff6A6A6A),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Appcolor.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),

                    Gap(20),

                    SearchFeild(),

                    Gap(30),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(category.length, (index) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Material(
                              color: selectedCategory == index
                                  ? Appcolor.primary
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  setState(() => selectedCategory = index);
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 7,
                                  ),
                                  child: Text(
                                    category[index],
                                    style: TextStyle(
                                      color: selectedCategory == index
                                          ? Color(0xffF5F5F5)
                                          : Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                    Gap(20)
                  ],
                ),
              ),
            ),

            /// Griddd
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context, index) {
                  return HomeBuilder(
                    image: Appimages.sandwich,
                    title: "Cheeseburger",
                    desc: "Wendy's Burger",
                    rate: "4.9",
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
