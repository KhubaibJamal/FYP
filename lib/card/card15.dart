import 'package:flutter/material.dart';

class Card15 extends StatelessWidget {
  const Card15({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 30),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.person, size: 50, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text(
                  "2210",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: const Center(
              child: Text(
                "Student",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
