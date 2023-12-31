import 'package:flutter/material.dart';
import 'package:genbot_mobile/Login/View/widget/main_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.topLeft,
            colors: [Color(0xFF3EBDC6), Color(0xFF0096D1)],
          ),
        ),
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 73),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Halo!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 57,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500)),
                  Text("Silahkan masuk untuk melanjutkan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 127),
                ],
              ),
            ),
            MainSection(),
          ],
        ),
      ),
    );
  }
}
