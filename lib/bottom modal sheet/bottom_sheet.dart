import 'package:flutter/material.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () async {},
            child: const BottomSheetTextWidget(
              text: "camera",
              iconData: Icons.image,
            ),
          ),
          GestureDetector(
            onTap: () async {},
            child: const BottomSheetTextWidget(
              text: "Gallery",
              iconData: Icons.browse_gallery,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetTextWidget extends StatelessWidget {
  const BottomSheetTextWidget(
      {super.key, required this.text, required this.iconData});

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.55,
      height: 94.90,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFF212121),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 35.98,
            height: 30.84,
            child: Stack(children: [Icon(iconData)]),
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
