import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  final String image;
  const Body({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size,image:image),
          const TitleAndPrice(
            title: "Coffee's",
            country: "Ethiopia",
            price: 400,
          ),
         const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: size.width / 2,
                  height: 54,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    child: const Center(
                        child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    child: const Center(
                        child: Text(
                      "Description",
                      style: TextStyle(color: kPrimaryColor, fontSize: 16),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 2,
              )
            ],
          )
        ],
      ),
    );
  }
}
