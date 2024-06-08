import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickers extends StatefulWidget {
  const DatePickers({super.key});

  @override
  State<DatePickers> createState() => _DatePickersState();
}

class _DatePickersState extends State<DatePickers> {
  TimeOfDay? _selectedTime;

  DateTime selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                final DateTimeRange? newDate = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                  helpText: 'Select a date',
                );
                print(newDate);
              },
              child: const Text("Date Picker 1"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                final DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2030),
                  helpText: 'Select a date',
                );
                print(newDate);
              },
              child: const Text("Date Picker 2"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: _selectedTime ?? TimeOfDay.now(),
                );

                if (pickedTime != null && pickedTime != _selectedTime) {
                  _selectedTime = pickedTime;
                }
                print(pickedTime);
              },
              child: const Text("Time Picker 3"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext builder) {
                    return SizedBox(
                      height: MediaQuery.of(context).copyWith().size.height / 3,
                      child: CupertinoDatePicker(
                        initialDateTime: selectedTime,
                        mode: CupertinoDatePickerMode.time,
                        onDateTimeChanged: (DateTime newTime) {
                          // _selectedTime = newTime as TimeOfDay?;
                        },
                        use24hFormat: false,
                      ),
                    );
                  },
                );
              },
              child: const Text("Time Picker 4"),
            ),
          ],
        ),
      ),
    );
  }
}
