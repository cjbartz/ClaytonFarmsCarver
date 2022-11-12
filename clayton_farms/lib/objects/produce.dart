

import 'package:flutter/material.dart';

class Produce {
  String name = '';
  String image = '';
  double price = 0.0;

  Produce(String name, String image, double price){
    this.name = name;
    this.image = image;
    this.price = price;
  }

  Widget getImage(){
    return Image(image: new ExactAssetImage(image));
  }

  Widget getDisplay(){
    return Center(
      child: Column(
        children:
          [
            Image(
                image: new ExactAssetImage(image),
                fit: BoxFit.contain,
            ),
            Text(name + " \$" + price.toStringAsPrecision(3))
          ]
      )
    );
  }



}