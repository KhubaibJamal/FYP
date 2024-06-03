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

snackBar2(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.yellow,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Row(
        children: [
          const Icon(Icons.warning, color: Colors.black),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}

snackBar3(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xff4338CA),
      content: Text(text),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}

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

snackBar6(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xff323232),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
          const Text(
            "Actions",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}

snackBar7(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xffFF4F4F),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Row(
        children: [
          const Icon(Icons.error, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        ],
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}
