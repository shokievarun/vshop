import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/Product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(height: 130,width: 410,color: Colors.lightGreen,),
         Container(
           alignment: Alignment.center,
         child:SizedBox(
           width: getProportionateScreenHeight(240),
           child: AspectRatio(
             aspectRatio: 1,
             child: Image.asset(widget.product.images[selectedImage],height: 1000,width: 1000,),
           ),
         ),)
        ]),
        Container(
          alignment: Alignment.center,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/Star Icon.svg",height: 20,width: 30,),
              const SizedBox(width: 5),
              Text(
                "4.8",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallImagePreview(index),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallImagePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        padding: EdgeInsets.all(getProportionateScreenHeight(4)),
        height: getProportionateScreenHeight(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImage == index ? Colors.green : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
