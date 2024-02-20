import 'package:flutter/material.dart';

class IconButton5 extends StatefulWidget {
  const IconButton5({super.key});

  @override
  _IconButton5State createState() => _IconButton5State();
}

class _IconButton5State extends State<IconButton5> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}
