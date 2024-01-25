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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 73),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 42,
                    child: Image.asset("assets/images/logo_nbg.png"),
                  ),
                  const SizedBox(width: 10),
                  const Text("BelajarAja!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const MainSection(),
          ],
        ),
      ),
    );
  }
}
