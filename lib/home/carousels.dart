import 'package:flutter/material.dart';
import 'package:fyp/carousel/carousel1.dart';
import 'package:fyp/carousel/carousel2.dart';

class Carousels extends StatelessWidget {
  const Carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(child: Carousel1()),
          Expanded(child: Carousel2()),
        ],
      ),
    );
  }
}
