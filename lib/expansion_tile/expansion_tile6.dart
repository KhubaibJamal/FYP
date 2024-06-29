import 'package:flutter/material.dart';

class ExpansionTile6 extends StatelessWidget {
  const ExpansionTile6({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: const ExpansionTile(
        title: Row(
          children: [
            Icon(Icons.play_circle_fill, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'C.P.R',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF673ab7),
        collapsedBackgroundColor: Color(0xFF673ab7),
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
                Text(
                  'History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
