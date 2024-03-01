import 'package:flutter/material.dart';
import 'package:fyp/card/card1.dart';
import 'package:fyp/card/card10.dart';
import 'package:fyp/card/card11.dart';
import 'package:fyp/card/card12.dart';
import 'package:fyp/card/card2.dart';
import 'package:fyp/card/card3.dart';
import 'package:fyp/card/card4.dart';
import 'package:fyp/card/card5.dart';
import 'package:fyp/card/card6.dart';
import 'package:fyp/card/card7.dart';
import 'package:fyp/card/card8.dart';
import 'package:fyp/card/card9.dart';

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
              Card5(
                text: "Explore",
                imageUrl:
                    'https://media.designrush.com/articles/101246/conversions/app-development-process-details.jpg',
                subtitle: '30+ clients',
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              Card6(title: "Title Here", onMoreTap: () {}),
              const SizedBox(height: 10),
              Card7(
                onTopRightButtonClicked: () {},
              ),
              const SizedBox(height: 10),
              Card8(
                title: "card title ",
                subTitle: "sub title",
                image:
                    'https://i.pinimg.com/736x/27/d5/f9/27d5f90856f3541ad7283b8ab09b6954.jpg',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              Card9(
                title: "card title ",
                subTitle:
                    "Cards are surface that display content and action on a single",
                image:
                    'https://i.pinimg.com/736x/27/d5/f9/27d5f90856f3541ad7283b8ab09b6954.jpg',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              const Card10(),
              const SizedBox(height: 10),
              const Card11(),
              const SizedBox(height: 10),
              const Card12(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
