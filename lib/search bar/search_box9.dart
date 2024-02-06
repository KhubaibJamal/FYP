import 'package:flutter/material.dart';

class SearchBox9 extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;
  const SearchBox9({
    super.key,
    required this.searchController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF637694),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF4e5f79),
              // borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: TextField(
              controller: searchController,
              onChanged: (value) {},
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xffffffff),
              ),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mic, color: Colors.grey[500]!),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[500]!),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
