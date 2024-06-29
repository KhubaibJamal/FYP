import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/expansion_tile/expansion_tile1.dart';
import 'package:fyp/expansion_tile/expansion_tile2.dart';
import 'package:fyp/expansion_tile/expansion_tile3.dart';
import 'package:fyp/expansion_tile/expansion_tile4.dart';

class ExpansionTiles extends StatelessWidget {
  const ExpansionTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile1(),
              SizedBox(height: 20),
              ExpansionTile2(
                text: "Science Department ",
                lists: [
                  "Department of Computer Science",
                  "Food and Science Department",
                  "Applied Physics Department",
                ],
              ),
              SizedBox(height: 20),
              ExpansionTile3(title: "Title"),
              SizedBox(height: 20),
              ExpansionTile4(),
            ],
          ),
        ),
      ),
    );
  }
}
