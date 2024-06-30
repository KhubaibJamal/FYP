import 'package:flutter/material.dart';

class ExpansionTile8 extends StatelessWidget {
  const ExpansionTile8({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      backgroundColor: const Color(0xFF7D8ABC),
      collapsedBackgroundColor: const Color(0xFF304463),
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: const Icon(
        Icons.flutter_dash,
        color: Colors.white,
      ),
      title: const Text(
        'Flutter',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flutter is an open-source UI software development kit created by Google. '
            'It is used to develop applications for Android, iOS, Linux, Mac, Windows, '
            'Google Fuchsia, and the web from a single codebase.',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
