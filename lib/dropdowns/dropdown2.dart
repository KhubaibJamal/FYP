import 'package:flutter/material.dart';

class Dropdown2 extends StatefulWidget {
  const Dropdown2({super.key});

  @override
  State<Dropdown2> createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  String _selectedItem = "Option 1";
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedItem,
      onChanged: (String? value) {
        setState(() {
          _selectedItem = value!;
        });
      },
      decoration: const InputDecoration(
        labelText: 'Select an option',
        border: OutlineInputBorder(),
      ),
      items: [
        'Option 1',
        'Option 2',
        'Option 3',
      ].map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                const Icon(Icons.star),
                const SizedBox(width: 10),
                Text(value),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
