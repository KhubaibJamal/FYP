import 'package:flutter/material.dart';

class Dialog7 extends StatelessWidget {
  const Dialog7({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFFF9800),
      title: const Text(
        'Input Dialog',
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 2,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const TextField(
        decoration: InputDecoration(
          hintText: "Enter your input here",
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
          },
        ),
      ],
    );
  }
}
