import 'package:flutter/material.dart';
import 'package:fyp/search%20bar/search_bar4.dart';
import 'package:fyp/search%20bar/search_bar2.dart';
import 'package:fyp/search%20bar/search_bar7.dart';
import 'package:fyp/search%20bar/search_bar5.dart';
import 'package:fyp/search%20bar/search_bar3.dart';
import 'package:fyp/search%20bar/search_bar1.dart';
import 'package:fyp/search%20bar/search_box10.dart';
import 'package:fyp/search%20bar/search_box11.dart';
import 'package:fyp/search%20bar/search_box6.dart';
import 'package:fyp/search%20bar/search_box8.dart';
import 'package:fyp/search%20bar/search_box9.dart';

class SearchBars extends StatelessWidget {
  SearchBars({super.key});

  final TextEditingController controller = TextEditingController();

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
                textController: controller,
                hintText: "Search Here",
              ),
              const SizedBox(height: 10),
              MiddleTextSearchBar2(
                searchController: controller,
                hintText: "Search Here",
              ),
              const SizedBox(height: 10),
              RoundedSearchBar3(
                textController: controller,
                hintText: 'Search Here',
              ),
              const SizedBox(height: 10),
              GradientSearchBar4(
                searchController: controller,
                hintText: 'Search Here',
              ),
              const SizedBox(height: 20),
              NeumorphismSearchBar5(
                controller: controller,
                hintText: "search here",
              ),
              const SizedBox(height: 20),
              SearchBox6(
                controller: controller,
                hintText: "Search...",
              ),
              const SizedBox(height: 20),
              NeumorphismSearchBar7(
                controller: controller,
                hintText: "search..",
              ),
              const SizedBox(height: 20),
              SearchBox8(
                textController: controller,
                hintText: "Search...",
              ),
              const SizedBox(height: 20),
              SearchBox9(
                searchController: controller,
                hintText: "Search...",
              ),
              const SizedBox(height: 20),
              SearchBox10(
                searchController: controller,
                hintText: "Search...",
              ),
              const SizedBox(height: 20),
              const SearchBox11(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
