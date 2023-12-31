import 'package:flutter/material.dart';
import 'package:genbot_mobile/Register/View/registration.dart';
// import 'package:genbot_mobile/Register/View/widget/dialog.dart';
import 'package:genbot_mobile/welcome/onboarding_screen.dart';

import 'Login/View/login.dart';

void main() {
  runApp(const GenbotApp());
}

class GenbotApp extends StatelessWidget {
  const GenbotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Genbot',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const OnboardingScreen(),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => const OnboardingScreen());
          case '/login':
            return MaterialPageRoute(builder: (context) => const LoginPage());
          case '/regist':
            return MaterialPageRoute(builder: (context) => const RegistPage());
          // case '/dialog':
          //   return MaterialPageRoute(builder: (context) => DialogContinue());
          default:
            return MaterialPageRoute(
                builder: (context) => const UnknownRoutePage());
        }
      },
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404 - Halaman tidak ditemukan'),
      ),
      body: const Center(
        child: Text('Halaman tidak ditemukan'),
      ),
    );
  }
}
