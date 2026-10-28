import 'package:flutter/material.dart';
import 'package:hungry/features/checkout/screens/checkout_screen.dart';
import 'package:hungry/root.dart';
import 'package:hungry/services/dio_provider.dart';
import 'package:hungry/splash_screen.dart';

void main() {
  DioProvider.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
