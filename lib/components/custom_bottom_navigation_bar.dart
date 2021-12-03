import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flybuy/models/Cart.dart';
import 'package:flybuy/screens/cart/cart_screen.dart';
import 'package:flybuy/screens/home/home_screen.dart';
import 'package:flybuy/screens/profile/profile_screen.dart';

import '../constants.dart';

enum Menu { home, favourites, message, profile, cart }

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final Menu selectedMenu;
  final Color inActiveColor = Color(0xFFADADAD);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: Offset(0, -15),
            color: Color(0xFFDADADA).withOpacity(.40),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color:
                    selectedMenu == Menu.home ? Colors.green: Colors.black,
              ),
              onPressed: () =>
                  selectedMenu == Menu.home ? null : Navigator.pop(context),
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                color: selectedMenu == Menu.profile
                    ? Colors.green
                    : Colors.black,
              ),
              onPressed: () => selectedMenu == Menu.profile
                ? null
                : Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
                color: selectedMenu == Menu.cart
                    ? Colors.green
                    : Colors.black,
              ),
              onPressed: () => selectedMenu == Menu.cart
                  ? null
                  : Navigator.pushNamed(context, CartScreen.routeName),
            ),
            IconButton(
              icon: Icon(
                Icons.settings_outlined  ,
                color: selectedMenu == Menu.favourites
                    ? Colors.green
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
