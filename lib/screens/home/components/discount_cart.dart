import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';

class DiscountCart extends StatelessWidget {
  const DiscountCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/mcdonalds.png"),
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF961F).withOpacity(0.6),
                      kPrimaryColor.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "McDonald's",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Get Discount of\n",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text: "30% \n",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "at MacDonald's on your frist order & Instant cashback",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
