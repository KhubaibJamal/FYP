import 'package:flutter/material.dart';

class Dialog12 extends StatelessWidget {
  const Dialog12({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff494949),
      title: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2581b4),
                  Color(0xff8382e9),
                ],
              ),
            ),
            child: const Icon(
              Icons.battery_charging_full_rounded,
              color: Colors.white,
              size: 50,
            ),
          ),
          const Text(
            "Attention",
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
          ),
          const Text(
            "\nYour flight battery getting very low, less than 20% remaining..",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
      content: Column(
        children: [
          CustomBtn(
            text: "Initiate emergency landing",
            onTap: () {},
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Keep Flying',
              style: TextStyle(
                // fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomBtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff8382e9),
              Color(0xff2581b4),
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
