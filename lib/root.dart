import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/colors.dart';
import 'package:hungry/features/auth/screens/profile_screen.dart';
import 'package:hungry/features/cart/screens/cart_screen.dart';
import 'package:hungry/features/home/screens/home_screen.dart';
import 'package:hungry/features/orderHistory/screens/order_history_screen.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController controller = PageController();
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(),
      CartScreen(),
      OrderHistoryScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Appcolor.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(currentScreen);
          },
          currentIndex: currentScreen,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          backgroundColor: Appcolor.primary,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
