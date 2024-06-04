import 'package:flutter/material.dart';
import 'package:fyp/snack%20bar/snack_bar1.dart';

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
