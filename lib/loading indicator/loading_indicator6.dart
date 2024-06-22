import 'package:flutter/material.dart';

class LoadingIndicator6 extends StatefulWidget {
  const LoadingIndicator6({super.key});

  @override
  State<LoadingIndicator6> createState() => _LoadingIndicator6State();
}

class _LoadingIndicator6State extends State<LoadingIndicator6>
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
    return CircularProgressIndicator(
      color: const Color(0xFF254336),
      backgroundColor: const Color(0xFFDAD3BE),
      value: controller.value,
      semanticsLabel: 'Circular progress indicator',
    );
  }
}
