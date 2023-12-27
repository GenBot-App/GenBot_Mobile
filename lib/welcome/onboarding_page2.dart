import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFFE64E45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          Container(
            margin: const EdgeInsets.only(top: 140),
            child: Image.asset(
              'assets/images/intro2.png',
              width: 360,
              height: 340,
            ),
          ),
          // SizedBox(
          //   height: 23,
          // ),
          // text
          const SizedBox(
            width: 280,
            height: 80,
            child: Text(
              'Belajar dengan cara yang lebih efektif dan efesien dengan aplikasi edukasi',
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
