import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/Product.dart';
import '../../../components/rounded_icon_button.dart';


class ColorDots extends StatefulWidget {
  ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
      child: Container(

        child: Row(
          children: [
                RoundedIconButton(icon: Icons.remove, press: () {}),
                SizedBox(width: 20,),
                SizedBox(child:Text('10',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),width: getProportionateScreenWidth(45)),
                RoundedIconButton(icon: Icons.add, press: () {}),

          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(8),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
