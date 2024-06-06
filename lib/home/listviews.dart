import 'package:flutter/material.dart';
import 'package:fyp/list%20view/list_view1.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView1(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
