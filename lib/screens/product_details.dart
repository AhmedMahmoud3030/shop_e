import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final productId =ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      persistentFooterButtons: [
        Row(
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
        )
      ],
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Center(child: Text('$index')),
                    );
                  },
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, letterSpacing: 4),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
