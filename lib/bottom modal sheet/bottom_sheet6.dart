import 'package:flutter/material.dart';

class BottomSheet6 extends StatelessWidget {
  const BottomSheet6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFF973131),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: const Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.share, color: Color(0xFFF9D689)),
            title: Text(
              'Share',
              style: TextStyle(color: Color(0xFFF5E7B2)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.copy, color: Color(0xFFF9D689)),
            title: Text(
              'Copy Link',
              style: TextStyle(color: Color(0xFFF5E7B2)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.edit, color: Color(0xFFF9D689)),
            title: Text(
              'Edit',
              style: TextStyle(color: Color(0xFFF5E7B2)),
            ),
          ),
        ],
      ),
    );
  }
}
