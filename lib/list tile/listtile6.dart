import 'package:flutter/material.dart';

class ListTile6 extends StatefulWidget {
  const ListTile6({super.key});

  @override
  State<ListTile6> createState() => _ListTile6State();
}

class _ListTile6State extends State<ListTile6> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      tileColor: const Color(0xFF0A1D56),
      checkColor: Colors.black,
      activeColor: Colors.white,
      title: const Text(
        'German',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      secondary: const Icon(
        Icons.language,
        color: Colors.white,
      ),
    );
  }
}
