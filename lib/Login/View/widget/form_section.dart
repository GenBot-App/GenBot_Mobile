import 'package:flutter/material.dart';

class FromSection extends StatefulWidget {
  const FromSection({super.key});

  @override
  State<FromSection> createState() => _FromSectionState();
}

class _FromSectionState extends State<FromSection> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff3EBDC6),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  if (value.contains(' ')) {
                    return 'Tidak boleh mengandung spasi';
                  }
                  if (!value.contains('@gmail.com') &&
                      !value.contains('@yahoo.com')) {
                    return 'Tidak lengkap';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Kata Sandi",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: password,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff3EBDC6),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    disabledColor: Colors.grey,
                    highlightColor: const Color(0xff3EBDC6),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  if (value.length < 8) {
                    return 'Minimal 8 karakter';
                  }
                  if (value.contains(' ')) {
                    return 'Tidak boleh mengandung spasi';
                  }
                  final RegExp regex = RegExp(
                      r'^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (!regex.hasMatch(value)) {
                    return 'Harus mengandung angka, huruf, dan karakter khusus';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, "/beranda");
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF3EBDC6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Masuk",
                    style: TextStyle(
                      color: Color(0xFFF0F2F3),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                    )),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    GestureDetector(
                        child: const Text(
                          "Lupa Kata Sandi",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w700),
                        ),
                        onTap: () => Navigator.pushNamed(context, '/forgotpwd'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
