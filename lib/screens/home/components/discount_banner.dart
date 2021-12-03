import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(0),
        vertical: getProportionateScreenHeight(0),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        "assets/images/ecommerce image banner.png",
        fit: BoxFit.cover,
        height: 90,
      ),
    );

  }
}





