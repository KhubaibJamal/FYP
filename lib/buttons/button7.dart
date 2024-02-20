import 'package:flutter/material.dart';

class ToggleAnimatedIconButton7 extends StatefulWidget {
  const ToggleAnimatedIconButton7({Key? key}) : super(key: key);

  @override
  State<ToggleAnimatedIconButton7> createState() =>
      _ToggleAnimatedIconButton7State();
}

class _ToggleAnimatedIconButton7State extends State<ToggleAnimatedIconButton7>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  bool state = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceIn,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.indigo,
      label: Row(
        children: [
          Text(!state ? "Play" : "Pause"),
          AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _animation),
        ],
      ),
      onPressed: () {
        if (!state) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
        setState(() {
          state = !state;
        });
      },
    );
  }
}
