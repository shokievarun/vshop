import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 27),
            // style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 17,),
            Text(
       "\ ${product.quantity} Kg",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ],
        ),        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: SizedBox(
            child: TextButton(
              onPressed: pressOnSeeMore,
              child: Row(
                children: [
                  Text("Read  more",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
