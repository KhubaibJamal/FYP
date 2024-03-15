import 'package:flutter/material.dart';

class Dialog2 extends StatelessWidget {
  final String title;
  final String description;

  const Dialog2({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text("Yes"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("No"),
        ),
      ],
    );
  }
}
