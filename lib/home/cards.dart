import 'package:flutter/material.dart';
import 'package:fyp/card/card1.dart';
import 'package:fyp/card/card2.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card1(
                text: "Explore",
                imageUrl:
                    'https://media.designrush.com/articles/101246/conversions/app-development-process-details.jpg',
                subtitle: '30+ clients',
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              const Card2(),
            ],
          ),
        ),
      ),
    );
  }
}
