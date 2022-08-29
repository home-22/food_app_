import 'package:flutter/material.dart';


import 'package:food_app/constants.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size,
    required this.press,
  }) : super(key: key);
  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.shopping_bag),
                SizedBox(width: 10),
                Text(
                  "Order Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
