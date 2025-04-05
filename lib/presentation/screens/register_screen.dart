import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart'; // استيراد حقل الإدخال المخصص
import 'login_screen.dart'; // استيراد شاشة تسجيل الدخول

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Зарегистрироваться'),
        backgroundColor: Colors.black, // خلفية سوداء
      ),
      backgroundColor: Colors.black, // خلفية سوداء
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField(
              hintText: 'Имя',
              icon: Icons.person,
              obscureText: false,
            ),
            SizedBox(height: 16),
            CustomInputField(
              hintText: 'Email',
              icon: Icons.email,
              obscureText: false,
            ),
            SizedBox(height: 16),
            CustomInputField(
              hintText: 'Пароль',
              icon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // الخلفية البيضاء
                foregroundColor: Colors.black, // النص الأسود
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Уже есть аккаунт? Войти',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}