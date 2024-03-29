import 'package:flutter/material.dart';
import 'package:fyp/home/appbars.dart';
import 'package:fyp/home/buttons.dart';
import 'package:fyp/home/cards.dart';
import 'package:fyp/home/dialogs.dart';
import 'package:fyp/home/input_text_fields.dart';
import 'package:fyp/home/listtiles.dart';
import 'package:fyp/home/search_bars.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Row(
                children: [
                  // buttons
                  HomeWidget(
                    width: width,
                    title: 'Buttons',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Buttons(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width,
                    title: 'SearchBars',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchBars(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width,
                    title: 'Cards',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cards(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'InputTextFields',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputTextFields(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'appBars',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppBars(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Dialogs',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dialogs(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'List tiles',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListTiles(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.width,
    required this.title,
    required this.onTap,
  });

  final double width;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width * 0.3,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
