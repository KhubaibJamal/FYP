import 'package:flutter/material.dart';

class DatePicker1 extends StatelessWidget {
  const DatePicker1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTimeRange? newDate = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
          helpText: 'Select a date',
        );
      },
      child: const Text("Date Picker 1"),
    );
  }
}
