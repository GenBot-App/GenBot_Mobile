import 'package:flutter/material.dart';
import 'package:genbot_mobile/Login/View/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    _checkIfFirstTime();
  }

  _checkIfFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('first_time') ?? true;

    if (!isFirstTime) {
      // Jika bukan pengguna baru, langsung navigasi ke halaman login atau beranda
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }
  }

  _markFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('first_time', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // blank space
                const SizedBox(
                  width: 100,
                  child: Text(""),
                ),
                // dot indicator
                SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                        activeDotColor: Colors.black,
                        dotColor: Colors.black,
                        paintStyle: PaintingStyle.stroke,
                        dotHeight: 15,
                        dotWidth: 15,
                        strokeWidth: 1)),
                // next button
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLastPage
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const SizedBox(
                                width: 67,
                                height: 18,
                                child: Text(
                                  'Next',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            )
                          : const Text(""),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
