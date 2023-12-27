import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFFE64E45),
      alignment: const Alignment(0, 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          Container(
            margin: const EdgeInsets.only(top: 160),
            child: Image.asset(
              'assets/images/intro3.2.png',
              width: 300,
              height: 300,
            ),
          ),
          // text
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 280,
            height: 80,
            child: Text(
              'Temukan dan kembangkan potensi anda',
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
