import 'package:flutter/material.dart';

class Animation4 extends StatefulWidget {
  const Animation4({Key? key}) : super(key: key);

  @override
  State<Animation4> createState() => Animation4State();
}

class Animation4State extends State<Animation4> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 4),
            child: const FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
            child: const Text('Fade Logo'),
            onPressed: () {
              setState(
                () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
              );
            },
          ),
        ],
      ),
    );
  }
}
