import 'package:flutter/material.dart';
import 'presentation/screens/splash_screen.dart'; // استيراد SplashScreen
import 'presentation/screens/welcome_screen.dart'; // استيراد WelcomeScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoneyGuard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // تعيين SplashScreen كشاشة رئيسية
    );
  }
}