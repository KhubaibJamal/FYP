import 'package:flutter/material.dart';

class InputTextField9 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const InputTextField9({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF363640),
      child: Center(
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 14, color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.done, color: Colors.white),
            filled: true,
            fillColor: const Color(0xFF3d3d47),
            hintText: hintText,
            labelText: hintText,
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.75)),
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.75)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
