import 'package:flutter/material.dart';
import 'package:flybuy/screens/cart/cart_screen.dart';

import './search_field.dart';
import '../../../size_config.dart';
import './icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          IconButton(
            icon: Icon(
              Icons.location_history,
              size: 35,
            ),
            onPressed: () {},
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Column(
              children: [
                Container(child: Text('Your location',style: TextStyle(fontSize: 12),),margin: EdgeInsets.fromLTRB(0, 0, 130, 0),),
                Text('Malalakshmi Layout,Benguluru',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.menu_rounded,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
