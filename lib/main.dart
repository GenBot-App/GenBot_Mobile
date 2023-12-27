import 'package:flutter/material.dart';
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
        primarySwatch: Colors.purple,
      ),
      home: const OnboardingScreen(),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => const OnboardingScreen());
          case '/login':
            return MaterialPageRoute(builder: (context) => LoginPage());
          default:
            return MaterialPageRoute(builder: (context) => UnknownRoutePage());
        }
      },
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 - Halaman tidak ditemukan'),
      ),
      body: Center(
        child: Text('Halaman tidak ditemukan'),
      ),
    );
  }
}
