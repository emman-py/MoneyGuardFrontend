import 'package:flutter/material.dart';
import '../widgets/circle_indicator.dart'; // استيراد CircleIndicator

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // العنوان الرئيسي
            Text(
              'Начните',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            // الوصف
            SizedBox(height: 10),
            Text(
              'Управляйте своими финансами грамотно и четко',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),

            // المسافة بين النصوص والدوائر
            SizedBox(height: 50),

            // دوائر الخطوات
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleIndicator(isActive: true), // الدائرة الأولى نشطة
                CircleIndicator(isActive: false),
                CircleIndicator(isActive: false),
              ],
            ),

            // المسافة بين الدوائر والأزرار
            SizedBox(height: 50),

            // الزر الأول: تسجيل الدخول
            Container(
              width: double.infinity, // يجعل الزر يغطي العرض الكامل للشاشة
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), // مسافة داخلية
              decoration: BoxDecoration(
                color: Colors.white, // الخلفية البيضاء
                borderRadius: BorderRadius.circular(8), // زوايا مستديرة
              ),
              child: Center(
                child: Text(
                  'Войти',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // المسافة بين الأزرار
            SizedBox(height: 16),

            // الزر الثاني: تسجيل جديد
            Container(
              width: double.infinity, // يجعل الزر يغطي العرض الكامل للشاشة
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), // مسافة داخلية
              decoration: BoxDecoration(
                color: Colors.grey[700], // الخلفية الرمادية المظلمة
                borderRadius: BorderRadius.circular(8), // زوايا مستديرة
              ),
              child: Center(
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}