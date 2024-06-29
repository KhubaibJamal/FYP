import 'package:flutter/material.dart';

class ExpansionTile5 extends StatelessWidget {
  const ExpansionTile5({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: const Color(0xFF304463),
        collapsedBackgroundColor: const Color(0xFF7D8ABC),
        iconColor: Colors.white,
        title: const Text("User 1", style: TextStyle(color: Colors.white)),
        children: const [
          Text("Name : Khubaib Jamal", style: TextStyle(color: Colors.white)),
          Text("Phone No: 02020202", style: TextStyle(color: Colors.white)),
          Text("isAdmin: No", style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
