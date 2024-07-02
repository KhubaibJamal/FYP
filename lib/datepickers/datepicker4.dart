import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker4 extends StatelessWidget {
  const DatePicker4({super.key});

  @override
  Widget build(BuildContext context) {
    TimeOfDay? _selectedTime;

    DateTime selectedTime = DateTime.now();
    return GestureDetector(
      onTap: () async {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext builder) {
            return SizedBox(
              height: MediaQuery.of(context).copyWith().size.height / 3,
              child: CupertinoDatePicker(
                initialDateTime: selectedTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (DateTime newTime) {},
                use24hFormat: false,
              ),
            );
          },
        );
      },
      child: const Text("Time Picker 4"),
    );
  }
}
