import 'package:flutter/material.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold),
        children: const [
          TextSpan(
            text: "Punk",
            style: TextStyle(color: kSecundaryColor),
          ),
          TextSpan(text: "Food", style: TextStyle(color: kPrimaryColor))
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications,color: Colors.black,),
        onPressed: () {},
      )
    ],
  );
}
