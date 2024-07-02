import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/datepickers/datepicker1.dart';
import 'package:fyp/datepickers/datepicker2.dart';
import 'package:fyp/datepickers/datepicker3.dart';
import 'package:fyp/datepickers/datepicker4.dart';

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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DatePicker1(),
            SizedBox(height: 20),
            DatePicker2(),
            SizedBox(height: 20),
            DatePicker3(),
            SizedBox(height: 20),
            DatePicker4(),
          ],
        ),
      ),
    );
  }
}
