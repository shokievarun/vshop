import 'package:flutter/material.dart';
import 'package:flybuy/components/custom_bottom_navigation_bar.dart';

import './components/body.dart';
import '../../models/Cart.dart';
import './components/custom_bottom_navigation_bar.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: cartnavigationbar()
      //
      // CustomBottomNavigationBar(selectedMenu: Menu.cart),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightGreen,
      title: Column(
        children: [
          Text(
            "Cart",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
