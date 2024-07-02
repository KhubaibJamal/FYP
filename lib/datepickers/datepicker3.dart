import 'package:flutter/material.dart';

class DatePicker3 extends StatefulWidget {
  const DatePicker3({super.key});

  @override
  State<DatePicker3> createState() => _DatePicker3State();
}

class _DatePicker3State extends State<DatePicker3> {
  TimeOfDay? _selectedTime;

  DateTime selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: _selectedTime ?? TimeOfDay.now(),
        );

        if (pickedTime != null && pickedTime != _selectedTime) {
          _selectedTime = pickedTime;
        }
      },
      child: const Text("Time Picker 3"),
    );
  }
}
