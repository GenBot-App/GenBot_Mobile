import 'package:flutter/material.dart';
import 'package:genbot_mobile/Login/View/widget/button_section.dart';
import 'package:genbot_mobile/Login/View/widget/form_section.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const FromSection(),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                                child: const Text(
                                  "Lupa Kata Sandi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () =>
                                    Navigator.pushNamed(context, '/forgotpwd'))
                          ],
                        ),
                      ),
                      const SizedBox(height: 105),
                      const ButtonSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
