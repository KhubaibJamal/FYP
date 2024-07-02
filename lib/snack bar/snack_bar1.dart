import 'package:flutter/material.dart';

snackBar1(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(text),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}
