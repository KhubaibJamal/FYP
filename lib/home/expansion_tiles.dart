import 'package:flutter/material.dart';
import 'package:fyp/expansion_tile/expansion_tile1.dart';

class ExpansionTiles extends StatelessWidget {
  const ExpansionTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding:  EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile1(),
            ],
          ),
        ),
      ),
    );
  }
}
