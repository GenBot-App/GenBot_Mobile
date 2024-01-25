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
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [Color(0xFF3EBDC6), Color(0xFF0096D1)],
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 73),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 42,
                    child: Image.asset("assets/images/logo_nbg.png"),
                  ),
                  SizedBox(width: 10),
                  Text("BelajarAja!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(height: 35),
            MainSection(),
          ],
        ),
      ),
    );
  }
}
