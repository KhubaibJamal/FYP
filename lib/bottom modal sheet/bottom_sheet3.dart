import 'package:flutter/material.dart';

class BottomSheet3 extends StatelessWidget {
  const BottomSheet3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 137.22,
            top: 25.32,
            child: GestureDetector(
              onTap: () async {},
              child: const BottomSheetTextWidget(
                text: "image",
                imageIcon: 'assets/image icon.png',
              ),
            ),
          ),
          Positioned(
            left: 250.45,
            top: 25.32,
            child: GestureDetector(
              onTap: () async {},
              child: const BottomSheetTextWidget(
                text: "video",
                imageIcon: 'assets/video.png',
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 128.08,
            child: GestureDetector(
              onTap: () async {},
              child: const BottomSheetTextWidget(
                text: "document",
                imageIcon: "assets/document.png",
              ),
            ),
          ),
          Positioned(
            left: 137.22,
            top: 128.08,
            child: GestureDetector(
              onTap: () {},
              child: const BottomSheetTextWidget(
                text: "opinionPoll",
                imageIcon: "assets/poll.png",
              ),
            ),
          ),
          Positioned(
            left: 250.45,
            top: 128.08,
            child: GestureDetector(
              onTap: () {},
              child: const BottomSheetTextWidget(
                text: "events",
                imageIcon: "assets/event.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetTextWidget extends StatelessWidget {
  const BottomSheetTextWidget(
      {super.key, required this.text, required this.imageIcon});

  final String text;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.55,
      height: 94.90,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF212121)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 35.98,
            height: 30.84,
            child: Stack(children: [Image.asset(imageIcon)]),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF010A1B),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
