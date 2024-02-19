import 'package:flutter/material.dart';

class GradientInputField7 extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;

  const GradientInputField7({
    required this.textController,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff22b2fe),
            Color(0xffb119ff),
          ],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1),
          ),
        ],
      ),
      child: TextField(
        controller: textController,
        onChanged: (value) {},
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xffffffff),
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.person,
            size: 25,
            color: Color(0xffffffff),
          ),
          filled: true,
          fillColor: Colors.transparent,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color(0xffffffff).withOpacity(.75)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
