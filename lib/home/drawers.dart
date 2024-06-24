import 'package:flutter/material.dart';
import 'package:fyp/drawers/drawer1.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer1(),
    );
  }
}
