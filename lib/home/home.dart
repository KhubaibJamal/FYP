import 'package:flutter/material.dart';
import 'package:fyp/home/appbars.dart';
import 'package:fyp/home/bottom_sheets.dart';
import 'package:fyp/home/buttons.dart';
import 'package:fyp/home/cards.dart';
import 'package:fyp/home/carousels.dart';
import 'package:fyp/home/date_pickers.dart';
import 'package:fyp/home/dialogs.dart';
import 'package:fyp/home/drawers.dart';
import 'package:fyp/home/dropdowns_menu.dart';
import 'package:fyp/home/expansion_tiles.dart';
import 'package:fyp/home/input_text_fields.dart';
import 'package:fyp/home/listtiles.dart';
import 'package:fyp/home/listviews.dart';
import 'package:fyp/home/loading_indicators.dart';
import 'package:fyp/home/mixed.dart';
import 'package:fyp/home/navigation_bars.dart';
import 'package:fyp/home/neumorphics.dart';
import 'package:fyp/home/search_bars.dart';
import 'package:fyp/home/sliders.dart';
import 'package:fyp/home/snackbars.dart';
import 'package:fyp/home/social_bottons.dart';
import 'package:fyp/templates/auth_template/welcome_screen.dart';
import 'package:fyp/templates/calculator/calculator.dart';
import 'package:fyp/templates/covid-19_template/dashboard_screen.dart';
import 'package:fyp/templates/healthy_food_template/bottom_nav_bar.dart';
import 'package:fyp/templates/quiz_template/screens/welcome/welcome.dart';

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
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Carousel',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Carousels(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Snack bar',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SnackBars(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Date Picker',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DatePickers(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'List View',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListViews(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Social Btn',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SocialButtons(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Sliders',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Sliders(),
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
                    title: 'Bottom Sheet',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomSheets(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Loading Indicator',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoadingIndicators(),
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
                    width: width,
                    title: 'Dropdowns',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DropdownsMenu(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width,
                    title: 'Drawers',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Drawers(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width,
                    title: 'Mixed',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mixed(),
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
                    title: 'Expansion Tile',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExpansionTiles(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width,
                    title: 'Nav bar',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NAvigationBars(),
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
                    width: width,
                    title: 'Neumorphic',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Neumorphics(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const Divider(thickness: 5, color: Colors.black),
              Row(
                children: [
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Auth Template',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'Healthy Food UI',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationAppBar(),
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
                    title: 'Calculator',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Calculator(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  HomeWidget(
                    width: width * 1.5,
                    title: 'covid 19',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
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
                    title: 'Quiz App',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Welcome(),
                        ),
                      );
                    },
                  ),
                  // const SizedBox(width: 10),
                  // HomeWidget(
                  //   width: width * 1.5,
                  //   title: 'covid 19',
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const DashboardScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
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
