import 'package:flutter/material.dart';

class InputTextField12 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const InputTextField12({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFff9186),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(fontSize: 14, color: Color(0xFFff9186)),
              decoration: InputDecoration(
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 8, top: 5, bottom: 5),
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFff9186),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: const TextStyle(color: Color(0xFFff9186)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
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
          ),
        ],
      ),
    );
  }
}
