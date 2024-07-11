import 'package:flutter/material.dart';

class Animation5 extends StatefulWidget {
  const Animation5({Key? key}) : super(key: key);

  @override
  State<Animation5> createState() => Animation5State();
}

class Animation5State extends State<Animation5> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
            child: const Text('Rotate Logo'),
          ),
        ],
      ),
    );
  }
}
