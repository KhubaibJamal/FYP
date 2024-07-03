import 'package:flutter/material.dart';
import 'package:fyp/drawers/drawer5.dart';
import 'package:fyp/drawers/drawer7.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // drawer: const Drawer1(),
      // drawer: const Drawer2(),
      // drawer: const Drawer3(),
      // drawer: const Drawer4(),
      // drawer: const Drawer6(),
      drawer: const Drawer5(),
      endDrawer: const Drawer7(),
    );
  }
}
