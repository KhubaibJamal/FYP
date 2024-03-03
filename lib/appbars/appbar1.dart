import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  final Size preferredSize;

  const AppBar1({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Widget Worlds",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff4338CA),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.share,
            color: Color(0xffffffff),
          ),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left,
          color: Color(0xffffffff),
        ),
        onPressed: () {
          
        },
      ),
    );
  }
}
