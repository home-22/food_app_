import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.18,
                  ),
                ),
                Text(title),
                const SizedBox(height: 10),
                Text(
                  shopName,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
