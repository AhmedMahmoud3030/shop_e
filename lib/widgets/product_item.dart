import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_e/screens/product_details.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String desc;
  final double cost;
  final String imageUrl;

  const ProductItem(
      {Key key,
      @required this.id,
      @required this.title,
      @required this.desc,
      @required this.cost,
      @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetails.routeName,arguments: id);
            },
            child: Container(
              height: 210,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '$cost \$',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
