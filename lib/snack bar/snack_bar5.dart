import 'package:flutter/material.dart';

snackBar5(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xff4338CA),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
          const Icon(Icons.home, color: Colors.white),
        ],
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}
