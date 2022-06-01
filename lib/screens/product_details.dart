import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_e/providers/products_provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<ProductsProvider>(context)
        .items
        .firstWhere((element) => element.id == productId);
    return Scaffold(
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        )
      ],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(width: double.infinity,height: 100,color: Colors.amber ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
