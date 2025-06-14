import 'package:book_a_doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.mainBlue,
        title: Text("Login Screen"),
      ),
      body: Center(child: Text("Login Screen")),
    );
  }
}
