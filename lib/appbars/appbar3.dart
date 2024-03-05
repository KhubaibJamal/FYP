import 'package:flutter/material.dart';

class AppBar3 extends StatelessWidget {
  const AppBar3({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: const Text(
        "Widget World",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xff4338CA),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff4338CA),
              Color(0xff6D28D9),
            ],
            stops: [0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
