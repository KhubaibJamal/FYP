import 'package:flutter/material.dart';

class InputTxtField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const InputTxtField(
      {super.key, required this.hintText,
      required this.controller,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
        color: Color(0xff888b91),
        fontSize: 20,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Color(0xff999a9e),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Color(0xff999a9e),
          ),
        ),
        border: const UnderlineInputBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff888b91),
          fontSize: 18,
        ),
      ),
    );
  }
}
