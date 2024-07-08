import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/dropdowns/dropdown1.dart';
import 'package:fyp/dropdowns/dropdown2.dart';
import 'package:fyp/dropdowns/dropdown3.dart';
import 'package:fyp/dropdowns/dropdown4.dart';
import 'package:fyp/dropdowns/dropdown5.dart';
import 'package:fyp/dropdowns/dropdown6.dart';
import 'package:fyp/dropdowns/dropdown7.dart';

class DropdownsMenu extends StatelessWidget {
  const DropdownsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Dropdown1(),
              SizedBox(height: 20),
              Dropdown2(),
              SizedBox(height: 20),
              Dropdown3(),
              SizedBox(height: 20),
              Dropdown4(),
              SizedBox(height: 20),
              Dropdown5(),
              SizedBox(height: 20),
              Dropdown6(),
              SizedBox(height: 20),
              Dropdown7(),
            ],
          ),
        ),
      ),
    );
  }
}
