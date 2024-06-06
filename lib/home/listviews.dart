import 'package:flutter/material.dart';
import 'package:fyp/list%20view/list_view1.dart';
import 'package:fyp/list%20view/list_view2.dart';
import 'package:fyp/list%20view/list_view3.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListView1(),
            SizedBox(height: 10),
            ListView2(),
            SizedBox(height: 10),
            ListView3(),
          ],
        ),
      ),
    );
  }
}
