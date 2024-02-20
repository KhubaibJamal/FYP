import 'package:flutter/material.dart';

class InputTextField10 extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  final String labelText;
  const InputTextField10({
    Key? key,
    required this.inputController,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      onChanged: (value) {},
      style: const TextStyle(fontSize: 14, color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: IconButton(
          onPressed: () {
            inputController.clear();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        labelStyle: const TextStyle(color: Colors.black),
        hintStyle: const TextStyle(color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );
  }
}
