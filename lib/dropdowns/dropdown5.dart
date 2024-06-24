import 'package:flutter/material.dart';

class Dropdown5 extends StatefulWidget {
  const Dropdown5({super.key});

  @override
  _Dropdown5State createState() => _Dropdown5State();
}

class _Dropdown5State extends State<Dropdown5> {
  String? _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF4CE14),
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(color: Colors.black),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: const Color(0xFF45474B),
          hint: const Text(
            'Select your favorite fruit',
            style: TextStyle(color: Colors.black),
          ),
          value: _selectedFruit,
          icon: const Icon(
            Icons.arrow_drop_down,
            color:  Color(0xFF45474B),
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
                    color: Color(0xFFF5F7F8),
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
