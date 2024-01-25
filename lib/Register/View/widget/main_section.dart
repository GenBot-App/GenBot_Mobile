import 'package:flutter/material.dart';
import 'package:genbot_mobile/Register/View/widget/navigate.dart';
import 'package:genbot_mobile/Register/View/widget/form_section.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Daftar',
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
                SizedBox(height: 20),
                NavGet(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
