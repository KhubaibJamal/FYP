import 'package:flutter/material.dart';
import 'package:fyp/carousel/carousel4.dart';

class Carousels extends StatelessWidget {
  const Carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: const Column(
        children: [
          // const Expanded(child: Carousel1()),
          // Expanded(child: Carousel2()),
          // Expanded(child: Carousel3()),
          Expanded(child: Carousel4()),
        ],
      ),
    );
  }
}
