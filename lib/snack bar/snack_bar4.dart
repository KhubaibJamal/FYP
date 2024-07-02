import 'package:flutter/material.dart';


snackBar4(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Row(
        children: [
          const Icon(Icons.done, color: Colors.white),
          const SizedBox(width: 5),
          Text(text),
        ],
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}
