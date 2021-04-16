import 'package:convid/screens/section/section.dart';
import 'package:flutter/material.dart';
import 'package:convid/screens/kidssection/kidssection.dart';
import '../../../size_config.dart';
import 'section_title.dart';
import 'package:convid/screens/jewellrysection/jewellrysection.dart';
import 'package:convid/screens/womensection/womensection.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Categories",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/mens.jpg",
                category: "Men section",
                numOfBrands: 18,
                press: () {
                  Navigator.pushNamed(context, SectionScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/women.png",
                category: "Women section",
                numOfBrands: 24,
                press: () {
                  Navigator.pushNamed(context, WomenSectionScreen.routeName);

                },
              ),

              SpecialOfferCard(
                image: "assets/images/kids.png",
                category: "Kids section ",
                numOfBrands: 24,
                press: () {
                  Navigator.pushNamed(context, KidsSectionScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/jewellery.png",
                category: "Jewellry",
                numOfBrands: 24,
                press: () {
                  Navigator.pushNamed(context, JewellrySectionScreen.routeName);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,

                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
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
