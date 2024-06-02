import 'package:flutter/material.dart';
import 'package:fyp/carousel/carousel1.dart';

class Carousels extends StatelessWidget {
  const Carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Expanded(child: Carousel1()),
        ],
      ),
    );
  }
}
