import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/men.jpg", "text": "Men"},
      {"icon": "assets/images/women.png", "text": "Women"},
      {"icon": "assets/images/kids.png", "text": "Kids"},
      {"icon": "assets/images/jewellery.png", "text": "Jewellery"},
      {"icon": "assets/images/other.jpg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
            image: categories[index]["image"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.image,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color:  Color(0xFFE3F2FD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(image),
            ),
            SizedBox(height: 10,width:10 ),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
