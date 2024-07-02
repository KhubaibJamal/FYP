import 'package:flutter/material.dart';
import 'package:fyp/snack%20bar/snack_bar1.dart';
import 'package:fyp/snack%20bar/snack_bar2.dart';
import 'package:fyp/snack%20bar/snack_bar3.dart';
import 'package:fyp/snack%20bar/snack_bar4.dart';
import 'package:fyp/snack%20bar/snack_bar5.dart';
import 'package:fyp/snack%20bar/snack_bar6.dart';
import 'package:fyp/snack%20bar/snack_bar7.dart';

class SnackBars extends StatelessWidget {
  const SnackBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            snackBar1(context, "Error");
            snackBar2(context, "Warning");
            snackBar3(context, "Profile Updated");
            snackBar4(context, "Success");
            snackBar5(context, "Welcome");
            snackBar6(context, "Added to cart");
            snackBar7(context,
                "Oh snap! Change a few things up and try submitting again.");
          },
          child: const Text("Snack Bar"),
        ),
      ),
    );
  }
}
