import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xFFE64E45),
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          Container(
            margin: const EdgeInsets.only(top: 204),
            child: Image.asset(
              'assets/images/intro1.png',
              width: 250,
              height: 250,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          // text
          const SizedBox(
            width: 280,
            height: 80,
            child: Text(
              'Aplikasi edukasi yang membuat belajar jadi lebih mudah dan menyenangkan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
