import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text:  TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style:
                     const TextStyle(
                      color: kTextColor, 
                      fontSize: 30,
                     fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$ $price",
            style: const TextStyle(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
