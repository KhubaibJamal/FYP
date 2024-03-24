import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  const ListTile1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      tileColor: Color(0xFFDDDDDD),
      leading: CircleAvatar(
        backgroundColor: Color(0xff764abc),
        child: Text('1'),
      ),
      title: Text('Item 1'),
      subtitle: Text('Item description'),
      trailing: Icon(Icons.more_vert),
    );
  }
}
