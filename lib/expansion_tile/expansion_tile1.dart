import 'package:flutter/material.dart';

class ExpansionTile1 extends StatelessWidget {
  const ExpansionTile1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Row(
        children: [
          Icon(Icons.person),
          Text('John Dee'),
        ],
      ),
      children: [
        ListTile(title: Text('999 000 111')),
      ],
    );
  }
}
