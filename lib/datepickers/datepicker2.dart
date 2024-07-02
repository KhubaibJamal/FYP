import 'package:flutter/material.dart';

class DatePicker2 extends StatelessWidget {
  const DatePicker2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTime? newDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1990),
          lastDate: DateTime(2030),
          helpText: 'Select a date',
        );
      },
      child: const Text("Date Picker 2"),
    );
  }
}
