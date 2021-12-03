import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';
import '../models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRatio = 1.02,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  final Product product;
  final double width, aspectRatio;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: SizedBox(
            width: getProportionateScreenWidth(width),
            height: getProportionateScreenHeight(237),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Image.asset(
                      product.images[0],
                    ),
                  ),
                ),
                 SizedBox(
                  height: 0,
                ),
                Text(
                  "${product.title}",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(13),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Image.asset('assets/images/cartcart.png',width: 50,height: 40,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
