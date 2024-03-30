import 'package:flutter/material.dart';

enum Gender { male, female }

class ListTile7 extends StatefulWidget {
  const ListTile7({super.key});

  @override
  State<ListTile7> createState() => _ListTile7State();
}

class _ListTile7State extends State<ListTile7> {
  Gender? _gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RadioListTile<Gender>(
          secondary: const Icon(Icons.male),
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Male'),
          value: Gender.male,
          groupValue: _gender,
          onChanged: (Gender? value) {
            setState(() {
              _gender = value;
            });
          },
        ),
        RadioListTile<Gender>(
          secondary: const Icon(Icons.female),
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Female'),
          value: Gender.female,
          groupValue: _gender,
          onChanged: (Gender? value) {
            setState(() {
              _gender = value;
            });
          },
        ),
      ],
    );
  }
}
