import 'package:flutter/material.dart';
import 'package:flybuy/components/default_button.dart';

import '../../size_config.dart';
import './components/body.dart';
import '../../models/Product.dart';
import './components/custom_appbar.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(product.rating,product.isFavourite,),
      body: Body(product: product,),

        floatingActionButton: ElevatedButton(
          onPressed: (){},
          child: Text(
            'Add to Cart',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            minimumSize: MaterialStateProperty.all(
              Size(
                getProportionateScreenWidth(350),
                getProportionateScreenHeight(56),
              ),
            ),
          ),
        ),
    );
  }
}
