import 'package:flutter/material.dart';

AppBar detailsAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFFFFC61F),
    elevation: 0,
    actions: [
      IconButton(
        icon: const Icon(Icons.share_sharp),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.clear_all_sharp),
        onPressed: () {},
      ),
    ],
  );
}
