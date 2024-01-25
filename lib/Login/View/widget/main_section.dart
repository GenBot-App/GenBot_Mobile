import 'package:flutter/material.dart';
import 'package:genbot_mobile/Login/View/widget/form_section.dart';
import 'package:genbot_mobile/Login/View/widget/navigate.dart';

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
        child: const Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Masuk',
                        style: TextStyle(
                          color: Color(0xFF0096D1),
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 24),
                      FormSection(),
                      SizedBox(height: 185),
                    ],
                  ),
                ),
                NavGet(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
