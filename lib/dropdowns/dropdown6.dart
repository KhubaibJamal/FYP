import 'package:flutter/material.dart';

class Dropdown6 extends StatefulWidget {
  const Dropdown6({super.key});

  @override
  _Dropdown6State createState() => _Dropdown6State();
}

class _Dropdown6State extends State<Dropdown6> {
  String? _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        // color: const Color(0xFFF4CE14),
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color(0xffDA3068),
            Color(0xff14469F),
          ],
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: const Color(0xFFE7F0DC),
          hint: const Text(
            'Select your favorite fruit',
            style: TextStyle(color: Colors.white),
          ),
          value: _selectedFruit,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Color(0xFFE7F0DC),
          ),
          iconSize: 24,
          isExpanded: true,
          style: const TextStyle(
            color: Colors.black,
          ),
          onChanged: (String? newValue) {
            setState(() {
              _selectedFruit = newValue;
            });
          },
          items: <String>['Apple', 'Banana', 'Cherry', 'Date']
              .map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
