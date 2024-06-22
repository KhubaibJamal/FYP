import 'package:flutter/material.dart';

class LoadingIndicator5 extends StatefulWidget {
  const LoadingIndicator5({super.key});

  @override
  State<LoadingIndicator5> createState() => _LoadingIndicator5State();
}

class _LoadingIndicator5State extends State<LoadingIndicator5>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(
        () {
          setState(() {});
        },
      );
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: const Color(0xFF373A40),
      backgroundColor: const Color(0xFFEEEEEE),
      value: controller.value,
      semanticsLabel: 'Linear progress indicator',
    );
  }
}
