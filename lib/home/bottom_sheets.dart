import 'package:flutter/material.dart';
import 'package:fyp/bottom%20modal%20sheet/bottom_sheet1.dart';

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
          ],
        ),
      ),
    );
  }
}
