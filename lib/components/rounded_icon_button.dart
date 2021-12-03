import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: TextButton(
        onPressed: press,
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
      ),
    );
  }
}
