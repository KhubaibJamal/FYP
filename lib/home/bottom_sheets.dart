import 'package:flutter/material.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet4.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet1.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet2.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet3.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet5.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheet1();
                    });
                return;
              },
              child: const Text("Bottom Sheet 1"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheet2();
                    });
                return;
              },
              child: const Text("Bottom Sheet 2"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheet3();
                    });
                return;
              },
              child: const Text("Bottom Sheet 3"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheet4();
                    });
                return;
              },
              child: const Text("Bottom Sheet 4"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheet5();
                    });
                return;
              },
              child: const Text("Bottom Sheet 5"),
            )
          ],
        ),
      ),
    );
  }
}
