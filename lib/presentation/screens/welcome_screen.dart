import 'package:flutter/material.dart';
import '../widgets/circle_indicator.dart'; // استيراد CircleIndicator
import 'login_screen.dart'; // استيراد شاشة تسجيل الدخول
import 'register_screen.dart'; // استيراد شاشة تسجيل جديد

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // خلفية سوداء
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24), // مسافة جانبية
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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

              // المسافة بين العنوان والوصف
              SizedBox(height: 10),

              // الوصف
              Text(
                'Управляйте своими финансами грамотно и четко',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),

              // المسافة بين الوصف والدوائر
              SizedBox(height: 50),

              // دوائر الخطوات
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleIndicator(isActive: true), // الدائرة الأولى نشطة
                  SizedBox(width: 8), // مسافة بين الدوائر
                  CircleIndicator(isActive: false),
                  SizedBox(width: 8), // مسافة بين الدوائر
                  CircleIndicator(isActive: false),
                ],
              ),

              // المسافة بين الدوائر والأزرار
              SizedBox(height: 50),

              // الزر الأول: تسجيل الدخول
              ElevatedButton(
                onPressed: () {
                  // الانتقال إلى صفحة تسجيل الدخول
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // الخلفية البيضاء
                  foregroundColor: Colors.black, // النص الأسود
                  padding: EdgeInsets.symmetric(vertical: 16), // مسافة داخلية
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // زوايا مستديرة
                  ),
                  minimumSize: Size(double.infinity, 50), // عرض كامل
                ),
                child: Text(
                  'Войти',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              // المسافة بين الأزرار
              SizedBox(height: 16),

              // الزر الثاني: تسجيل جديد
              ElevatedButton(
                onPressed: () {
                  // الانتقال إلى صفحة تسجيل جديد
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700], // الخلفية الرمادية المظلمة
                  foregroundColor: Colors.white, // النص الأبيض
                  padding: EdgeInsets.symmetric(vertical: 16), // مسافة داخلية
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // زوايا مستديرة
                  ),
                  minimumSize: Size(double.infinity, 50), // عرض كامل
                ),
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}