import 'package:flutter/material.dart';

class InputTextField11 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const InputTextField11({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        //Do something on on change
      },
      style: const TextStyle(fontSize: 14, color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            controller.clear();
          },
          child: Container(
            margin: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.clear,
              color: Colors.red,
            ),
          ),
        ),
        filled: true,
        fillColor: const Color(0xFF353c4a),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.75)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
      ),
    );
  }
}
