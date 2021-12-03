import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../../components/default_button.dart';

class cartnavigationbar extends StatelessWidget {
  const cartnavigationbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(20),
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenWidth(40),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F6F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Text("Promo code",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                SizedBox(width: 30),
                ElevatedButton(onPressed: (){}, child: Text('XYU82020'),style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black12),),),
                Spacer(),
                ElevatedButton(onPressed: (){}, child: Text('Apply'),style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Subtotal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                Spacer(),
                Text('\$200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),

                SizedBox(width: 10,),
              ],
            ),Row(
              children: [
                SizedBox(width: 10,),
                Text('Delivery',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                Spacer(),
                Text('\$20',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 10,),
              ],
            ),
            Text('________________________________________________________'),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Total',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
                Spacer(),
                Text('\$220',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(335),
                  child: DefaultButton(
                    text: "Order now",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
