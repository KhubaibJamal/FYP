import 'package:flutter/material.dart';
import 'package:fyp/drawers/drawer1.dart';
import 'package:fyp/drawers/drawer2.dart';
import 'package:fyp/drawers/drawer3.dart';
import 'package:fyp/drawers/drawer4.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // drawer: const Drawer1(),
      // drawer: const Drawer2(),
      // drawer: const Drawer3(),
      drawer: const Drawer4(),
    );
  }
}
