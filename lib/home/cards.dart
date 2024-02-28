import 'package:flutter/material.dart';
import 'package:fyp/card/card1.dart';
import 'package:fyp/card/card2.dart';
import 'package:fyp/card/card3.dart';
import 'package:fyp/card/card4.dart';

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
              const SizedBox(height: 10),
              Card3(
                imgUrl:
                    'https://recipe52.com/wp-content/uploads/2022/04/chicken-korma-pakistani-2-1024x1024.jpg',
                title: "Chicken Karahi",
                color: Colors.amber,
                onTap: () {},
              ),
              const SizedBox(height: 10),
              const Card4(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
