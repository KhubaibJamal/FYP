import 'package:flutter/material.dart';

class Dialog5 extends StatelessWidget {
  const Dialog5({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFFF204E),
      title: const Text(
        'AlertDialog Title',
        style: TextStyle(
          color: Color(0xFF00224D),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'This is a demo alert dialog.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Would you like to approve of this message?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Approve',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
