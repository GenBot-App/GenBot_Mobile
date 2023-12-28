import 'package:flutter/material.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/beranda");
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF3EBDC6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(double.infinity, 40),
          ),
          child: const Text("Masuk",
              style: TextStyle(
                color: Color(0xFFF0F2F3),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              )),
        ),
        const SizedBox(height: 50),
        Row(
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
              onTap: () => Navigator.pushNamed(context, '/signup'),
            ),
          ],
        ),
      ],
    );
  }
}
