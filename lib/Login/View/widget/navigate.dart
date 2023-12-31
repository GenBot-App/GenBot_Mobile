import 'package:flutter/material.dart';

class NavGet extends StatelessWidget {
  const NavGet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Belum punya akun? ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            child: const Text(
              "Buat akun disini",
              style: TextStyle(
                color: Color(0xFF3EBDC6),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, '/regist'),
          ),
        ],
      ),
    );
  }
}
