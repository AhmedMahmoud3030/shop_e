import 'package:flutter/cupertino.dart';



class Product {
  final String id;
  final String title;
  final String desc;
  final double cost;
  final String image;

  Product({
    @required this.id,
    @required this.title,
    @required this.desc,
    @required this.cost,
    @required this.image,
  });
}
