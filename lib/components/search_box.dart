import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanget;

  const SearchBox({
    Key? key,
    required this.onChanget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: kSecundaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanget,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(5),
          border: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: "Search Here",
          helperStyle: TextStyle(
            color: kSecundaryColor,
          ),
        ),
      ),
    );
  }
}
