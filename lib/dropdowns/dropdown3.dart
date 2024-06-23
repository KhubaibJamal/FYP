import 'package:flutter/material.dart';

class Dropdown3 extends StatefulWidget {
  const Dropdown3({super.key});

  @override
  _Dropdown3State createState() => _Dropdown3State();
}

class _Dropdown3State extends State<Dropdown3> {
  String _selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedGender,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedGender = newValue!;
        });
      },
      items: <String>['Male', 'Female', 'Other'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              value == 'Male'
                  ? const Icon(Icons.male)
                  : value == 'Female'
                      ? const Icon(Icons.female)
                      : const Icon(Icons.transgender),
              const SizedBox(width: 10),
              Text(value),
            ],
          ),
        );
      }).toList(),
    );
  }
}
