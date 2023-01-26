import 'package:flutter/material.dart';

import '../../data/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: searchBarColor,
          hintText: 'Search or start new chat',
          hintStyle: const TextStyle(fontSize: 13),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 17,
          ),
        ),
      ),
    );
  }
}
