import 'package:flutter/material.dart';
import 'package:genbot_mobile/Register/View/widget/dialog.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key});

  @override
  State<FormSection> createState() => _FromSectionState();
}

class _FromSectionState extends State<FormSection> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isConfirmPassVisible = false;

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
                  "Nama Lengkap",
                  style: TextStyle(
                    color: Color(0xFF0096D1),
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
                controller: name,
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
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    color: Color(0xFF0096D1),
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
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  if (!value.contains('@gmail.com') &&
                      !value.contains('@yahoo.com')) {
                    return 'Tidak lengkap"';
                  }
                  if (value.contains(' ')) {
                    return 'Tidak boleh mengandung spasi';
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
                    color: Color(0xFF0096D1),
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
                      color: Colors.grey,
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
                    return 'Email harus mengandung angka, huruf, dan karakter khusus, serta memiliki panjang minimal 8 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Konfirmasi Kata Sandi",
                  style: TextStyle(
                    color: Color(0xFF0096D1),
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
                controller: confirmPassword,
                obscureText: !isConfirmPassVisible,
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
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPassVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        isConfirmPassVisible = !isConfirmPassVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  if (value != password.text) {
                    return 'Konfirmasi Kata Sandi tidak cocok';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // buatlah jika tombol di tekan akan menampilkan dialog untuk melanjutkan
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => DialogContinue());
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
            ],
          ),
        ),
      ],
    );
  }
}
