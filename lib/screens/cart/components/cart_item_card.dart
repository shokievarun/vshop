import 'package:flutter/material.dart';
import 'package:flybuy/components/rounded_icon_button.dart';
import 'package:flybuy/screens/product_details/components/colors_dots.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cartItem,
  }) : super(key: key);

  final cartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: .88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cartItem.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${cartItem.product.title}",
              maxLines: 2,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: '\$${cartItem.product.price}',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                    children: [
                      // TextSpan(
                      //   text: ' x${cartItem.numOfItem}',
                      //   style: TextStyle(color: kTextColor),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(8)),
                  child: Container(
                    child: Row(
                      children: [
                        RoundedIconButton(icon: Icons.remove, press: () {}),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                            child: Text(
                              '10',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            width: getProportionateScreenWidth(45)),
                        RoundedIconButton(icon: Icons.add, press: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
