import 'package:flutter/material.dart';

class BottomSheet10 extends StatelessWidget {
  const BottomSheet10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFFd5f1da),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading:
                  Icon(Icons.navigation_outlined, color: Color(0xff55795f)),
              title: Text('Navigation',
                  style: TextStyle(fontSize: 16, color: Color(0xff55795f))),
            ),
            const ListTile(
              leading: Icon(Icons.map, color: Color(0xff55795f)),
              title: Text('Maps',
                  style: TextStyle(fontSize: 16, color: Color(0xff55795f))),
            ),
            const ListTile(
              leading: Icon(Icons.height_outlined, color: Color(0xff55795f)),
              title: Text('Altitude',
                  style: TextStyle(fontSize: 16, color: Color(0xff55795f))),
            ),
            const ListTile(
              leading: Icon(Icons.pin_drop, color: Color(0xff55795f)),
              title: Text('Pincode',
                  style: TextStyle(fontSize: 16, color: Color(0xff55795f))),
            ),
            const ListTile(
              leading:
                  Icon(Icons.emoji_emotions_outlined, color: Color(0xff55795f)),
              title: Text('Feedback',
                  style: TextStyle(fontSize: 16, color: Color(0xff55795f))),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff55795f),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('Select',
                      style: TextStyle(fontSize: 16, color: Color(0xffd5f1da))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
