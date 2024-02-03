import 'package:flutter/material.dart';
import 'package:fyp/search%20bar/middle_text_search_bar2.dart';
import 'package:fyp/search%20bar/search_bar1.dart';

class SearchBars extends StatelessWidget {
  SearchBars({super.key});

  final TextEditingController controllerOne = TextEditingController();
  final TextEditingController controllerTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchBar1(
                textController: controllerOne,
                hintText: "Search Here",
              ),
              const SizedBox(height: 10),
              MiddleTextSearchBar2(
                searchController: controllerTwo,
                hintText: "Search Here",
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
