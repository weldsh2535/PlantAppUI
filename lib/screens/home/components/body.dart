import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/detail_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          const SizedBox(
            height: 20,
          ),
          TitleWithMoreBtn(title: "Recommanded", press: () {}),
          const RecomandsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturePlants(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlanCard(
            image: "assets/images/flower.jpg",
            press: () {},
          ),
          FeaturePlanCard(
            image: "assets/images/flower1.jpg",
            press: () {},
          ),
          FeaturePlanCard(
            image: "assets/images/flower2.jpg",
            press: () {},
          ),
          FeaturePlanCard(
            image: "assets/images/flower3.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlanCard extends StatelessWidget {
  const FeaturePlanCard({super.key, required this.image, required this.press});

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}

class RecomandsPlants extends StatelessWidget {
  const RecomandsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandPlanCard(
            image: "assets/images/zembaba.jpg",
            country: "Ethiopia",
            title: "Zembaba's",
            price: 200,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(image:"assets/images/zembaba.jpg" ,),
                  ));
            },
          ),
          RecommandPlanCard(
            image: "assets/images/zembaba3.jpg",
            country: "Ethiopia",
            title: "Zembaba's",
            price: 200,
            press: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(image: "assets/images/zembaba3.jpg",),
                  ));
            },
          ),
          RecommandPlanCard(
            image: "assets/images/zembaba4.jpg",
            country: "Ethiopia",
            title: "Zembaba's",
            price: 200,
            press: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(image: "assets/images/zembaba4.jpg"),
                  ));
            },
          ),
          RecommandPlanCard(
            image: "assets/images/zembaba1.jpg",
            country: "Ethiopia",
            title: "Zembaba's",
            price: 200,
            press: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(image: "assets/images/zembaba1.jpg"),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecommandPlanCard extends StatelessWidget {
  const RecommandPlanCard(
      {super.key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.press});
  final String image, title, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(image:image),
                  ));
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * .4,
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                 image:
                DecorationImage(fit: BoxFit.fill, image: AssetImage(image))
              ),),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${title}\n".toUpperCase(),
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "${country}\n".toUpperCase(),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function press;
  const TitleWithMoreBtn({super.key, required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(children: <Widget>[
         TitleWithCustomUnderLine(title: title),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 50,
            height: 30,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Center(
                child: const Text(
              "More",
              style: TextStyle(color: kBackgroundColor),
            )),
          ),
        )
      ]),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Positioned(
          //     bottom: 0,
          //     left: 0,
          //     right: 0,
          //     child: Container(
          //       margin: EdgeInsets.only(right: kDefaultPadding / 4),
          //       height: 7,
          //       color: kPrimaryColor.withOpacity(0.2),
          //     ))
        ],
      ),
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            // margin: const EdgeInsets.only(
            //   bottom: kDefaultPadding * 2.5
            // ),
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: const Row(
              children: [
                Text(
                  "Hi Alem!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Spacer(),
                Icon(
                  Icons.palette_sharp,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ]),
                child: TextField(
                  onChanged: (value) {
                    print("object");
                  },
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle:
                          TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: const Icon(Icons.search_outlined)),
                ),
              ))
        ],
      ),
    );
  }
}
