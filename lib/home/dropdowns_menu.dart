import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/dropdowns/dropdown1.dart';

class DropdownsMenu extends StatelessWidget {
  const DropdownsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(width: width, child: Dropdown1()),
            ],
          ),
        ),
      ),
    );
  }
}
