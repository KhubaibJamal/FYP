import 'package:flutter/material.dart';

class Card10 extends StatelessWidget {
  const Card10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF846AFF),
            Color(0xFF755EE8),
            Colors.purpleAccent,
            Colors.amber,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Family Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "monospace",
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: EdgeInsets.only(left: (15 * index).toDouble()),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                '4111 7679 8689 9700',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "monospace",
                ),
              ),
            ],
          ),
          const Text(
            '\$3,000',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
