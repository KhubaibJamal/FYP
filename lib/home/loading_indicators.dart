import 'package:flutter/material.dart';
import 'package:fyp/loading%20indicator/loading_indicator1.dart';

class LoadingIndicators extends StatelessWidget {
  const LoadingIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            LoadingIndicator1(
              currentDotColor: Color(0xFFC80036),
              defaultDotColor: Color(0xFFFF6969),
              numDots: 10,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
