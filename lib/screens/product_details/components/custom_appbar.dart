import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../../components/rounded_icon_button.dart';

class CustomAppBar extends PreferredSize {
  final double rating;
  final bool isFavourite;
  CustomAppBar(this.rating,this.isFavourite);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconButton(
                icon: Icons.arrow_back_ios,
                press: () => Navigator.pop(context),
              ),
              Text('Product',style:TextStyle(color
                  :Colors.white,fontWeight: FontWeight.bold,fontSize: 25,),),

              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: getProportionateScreenWidth(64),
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  child: SvgPicture.asset(
                    isFavourite
                        ? "assets/icons/Heart Icon_2.svg"
                        : "assets/icons/Heart Icon.svg",
                    color: isFavourite
                        ? Color(0xFFFF4848).withOpacity(1)
                        : Colors.white,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),

              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.green,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              //   child: Row(
              //     children: [
              //       Text(
              //         "$rating",
              //         style: TextStyle(fontWeight: FontWeight.w600),
              //       ),
              //       const SizedBox(width: 5),
              //       SvgPicture.asset("assets/icons/Star Icon.svg"),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
