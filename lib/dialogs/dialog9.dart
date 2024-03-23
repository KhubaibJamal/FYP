import 'package:flutter/material.dart';

class Dialog9 extends StatefulWidget {
  const Dialog9({super.key});

  @override
  State<Dialog9> createState() => _Dialog9State();
}

class _Dialog9State extends State<Dialog9> {
  String _selectedLanguage = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFDDDDDD),
      title: const Text(
        'Choose Your Favorite Programming Language',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile(
            title: const Text(
              'Java',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            value: 'Java',
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text(
              'Flutter',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            value: 'Flutter',
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text(
              'Python',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            value: 'Python',
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Abort',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            // Perform action on confirm button press
          },
          child: const Text(
            'Confirm',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
