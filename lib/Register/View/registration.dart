import 'package:flutter/material.dart';
import 'package:genbot_mobile/Register/View/widget/main_section.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
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
                  Text("Silahkan daftar untuk melanjutkan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
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
