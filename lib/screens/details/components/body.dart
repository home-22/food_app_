import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/itemm_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Column(
      children: const [
        ItemImage(
          imgSrc: "images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            shopeName(name: "MacDonalds"),
            const TitlePriceRating(
              name: "Cheese Burger",
              numOfReviews: 24,
              rating: 4,
              price: 15,
            ),
            RatingBarIndicator(
              rating: 4,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            const Text(
              "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
              style: TextStyle(
                height: 1.5,
              ),
            ),
            const SizedBox(height: 70),
            OrderButton(
              size: size,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: kSecundaryColor,
        ),
        const SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
