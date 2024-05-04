import 'package:flutter/material.dart';

class ListTile10 extends StatelessWidget {
  const ListTile10({
    super.key,
    required this.title,
    required this.subtitle,
    required this.switchValue,
    required this.onChanged,
  });

  final String title;
  final String subtitle;
  final bool switchValue;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xFF12372A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Poppins',
          color: Color(0xFFADBC9F),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          fontFamily: 'Poppins',
          color: Color(0xFFADBC9F),
        ),
      ),
      trailing: Switch(
        activeColor: Colors.white,
        value: switchValue,
        onChanged: onChanged,
      ),
    );
  }
}
