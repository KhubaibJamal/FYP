import 'package:flutter/material.dart';

class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.notifications_sharp),
        title: Text('Notification 1'),
        subtitle: Text('This is a notification'),
      ),
    );
  }
}
