import 'package:flutter/material.dart';
import 'package:fyp/home/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FYP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}




/*
WIDGET:
1- buttons 14
2- search bar 11
3- card 17
4- input text field 15
5- appbar 13
6- dialogs 12
7- list tile 11
8- carousel 4
9- snackbar 7
10- date picker 4
11- list view 3
12- social buttons 10
13- sliders 6
14- bottom sheet 11
15- loading indicator 8
16- dropdowns 7
17- drawer 7
18- mixed 2
19- Expansion tile 8
20- nav bar 12
21- neumorphic 14
22- animations 5

TOTAL: 201

TEMPLATE:
1- healthy food ui (complete)
2- covid-19 ui (complete)
3- quiz app (complete)
4- chat app (complete)
5- travel app (complete)
6- shop app ui (complete)

*/