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



// chat app ui    https://github.com/abuanwar072/Chat-Messaging-App-Light-and-Dark-Theme
// travel app   https://github.com/abuanwar072/Travel-App-UI-using-Flutter
// flutter_neumorphic for newomorphic design


/*
TEMPLATE:
1- healthy food ui (complete)
2- covid-19 ui (complete)
3- quiz app (complete)
4- chat app 
5- travel app
6- shop app ui (complete)

*/