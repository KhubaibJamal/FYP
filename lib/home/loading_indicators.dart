import 'package:flutter/material.dart';
import 'package:fyp/loading%20indicator/loading_indicator1.dart';
import 'package:fyp/loading%20indicator/loading_indicator2.dart';
import 'package:fyp/loading%20indicator/loading_indicator3.dart';
import 'package:fyp/loading%20indicator/loading_indicator4.dart';
import 'package:fyp/loading%20indicator/loading_indicator5.dart';
import 'package:fyp/loading%20indicator/loading_indicator6.dart';
import 'package:fyp/loading%20indicator/loading_indicator7.dart';
import 'package:fyp/loading%20indicator/loading_indicator8.dart';

class LoadingIndicators extends StatelessWidget {
  const LoadingIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              LoadingIndicator1(
                currentDotColor: Color(0xFFC80036),
                defaultDotColor: Color(0xFFFF6969),
                numDots: 10,
              ),
              SizedBox(height: 20),
              LoadingIndicator2(),
              SizedBox(height: 20),
              LoadingIndicator3(),
              SizedBox(height: 20),
              LoadingIndicator4(
                currentPage: 0,
                numPages: 5,
              ),
              SizedBox(height: 20),
              LoadingIndicator5(),
              SizedBox(height: 20),
              LoadingIndicator6(),
              SizedBox(height: 20),
              LoadingIndicator7(),
              SizedBox(height: 20),
              LoadingIndicator8(percentage: 44),
            ],
          ),
        ),
      ),
    );
  }
}
