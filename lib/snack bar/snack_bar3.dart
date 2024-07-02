import 'package:flutter/material.dart';


snackBar3(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xff4338CA),
      content: Text(text),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}