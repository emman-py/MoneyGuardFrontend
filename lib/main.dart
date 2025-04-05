import 'package:flutter/material.dart';
import 'presentation/screens/splash_screen.dart'; // استيراد شاشة البداية
import 'presentation/screens/welcome_screen.dart'; // استيراد شاشة الترحيب

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoneyGuard', // عنوان التطبيق
      theme: ThemeData(
        primarySwatch: Colors.blue, // لون التطبيق الأساسي
      ),
      initialRoute: '/', // تحديد المسار الأولي للتطبيق
      routes: {
        '/': (context) => const SplashScreen(), // شاشة البداية كشاشة رئيسية
        '/welcome': (context) => const WelcomeScreen(), // شاشة الترحيب
        // يمكن إضافة المزيد من المسارات هنا عند الحاجة
      },
    );
  }
}