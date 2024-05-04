import 'package:flutter/material.dart';

class ListTile11 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String leadingText;
  const ListTile11({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xFF43766C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Color(0xFFF8FAE5),
            ),
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.expand_more,
            color: Color(0xFFF8FAE5),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              fontFamily: 'Poppins',
              color: Color(0xFFF8FAE5),
            ),
          ),
          const Spacer(),
          Text(
            leadingText,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              fontFamily: 'Poppins',
              color: Color(0xFFF8FAE5),
            ),
          ),
        ],
      ),
    );
  }
}
