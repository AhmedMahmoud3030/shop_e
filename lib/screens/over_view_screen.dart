import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_e/screens/products_screen.dart';

class OverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              autofocus: false,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 6, 6, 6)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFE5E7E5),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4),
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE5E7E5)),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE5E7E5)),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Categories',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) => Container(
                      margin: EdgeInsets.all(9),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(color: Colors.amber),
                    )),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ProductsScreen.routeName);
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
