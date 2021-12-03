import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flybuy/constants.dart';

import '../../../size_config.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/images/pottingsoil.png", "text": "potting soil"},
    {"icon": "assets/images/planthealth.png", "text": "plant health"},
    {"icon": "assets/images/saeeds.png", "text": "seeds"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]['icon'],
              text: categories[index]['text'],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(105),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.lightGreen),
                  borderRadius: BorderRadius.circular(3),

                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Image.asset(
                      icon,
                      height: 50,

                    ),

                    SizedBox(height: 5,),
                    Text(text, textAlign: TextAlign.center),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
