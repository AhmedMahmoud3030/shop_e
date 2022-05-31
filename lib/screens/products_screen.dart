import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_e/widgets/product_item.dart';

import '../models/porduct.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/product-screen';
  final List<Product> loaddedProduct = [
    Product(
      id: '1',
      title: 'speaker',
      desc: 'good sound',
      cost: 20,
      image:
          'https://s.yimg.com/uu/api/res/1.2/uz3OWqQlnoGsVen4niXi7Q--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/uu/api/res/1.2/d7RiLbcKy5ReJiqvwbjIZg--~B/aD05NjA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/bca4afa88695ef886ebb2ca7b2273906/206303519/beoplay-p6---natural_26622372137_o.jpg.cf.jpg',
    ),
    Product(
      id: '2',
      title: 'airpod',
      desc: 'better sound',
      cost: 80,
      image:
          'https://s.yimg.com/uu/api/res/1.2/uz3OWqQlnoGsVen4niXi7Q--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/uu/api/res/1.2/d7RiLbcKy5ReJiqvwbjIZg--~B/aD05NjA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/bca4afa88695ef886ebb2ca7b2273906/206303519/beoplay-p6---natural_26622372137_o.jpg.cf.jpg',
    ),
    Product(
      id: '3',
      title: 'fomo',
      desc: 'fomo sound',
      cost: 30,
      image:
          'https://s.yimg.com/uu/api/res/1.2/uz3OWqQlnoGsVen4niXi7Q--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/uu/api/res/1.2/d7RiLbcKy5ReJiqvwbjIZg--~B/aD05NjA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/bca4afa88695ef886ebb2ca7b2273906/206303519/beoplay-p6---natural_26622372137_o.jpg.cf.jpg',
    ),
    Product(
      id: '4',
      title: 'fifo',
      desc: 'fifo sound',
      cost: 50,
      image:
          'https://s.yimg.com/uu/api/res/1.2/uz3OWqQlnoGsVen4niXi7Q--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/uu/api/res/1.2/d7RiLbcKy5ReJiqvwbjIZg--~B/aD05NjA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/bca4afa88695ef886ebb2ca7b2273906/206303519/beoplay-p6---natural_26622372137_o.jpg.cf.jpg',
    ),
    Product(
      id: '5',
      title: 'lifo',
      desc: 'lifo sound',
      cost: 80,
      image:
          'https://s.yimg.com/uu/api/res/1.2/uz3OWqQlnoGsVen4niXi7Q--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/uu/api/res/1.2/d7RiLbcKy5ReJiqvwbjIZg--~B/aD05NjA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/bca4afa88695ef886ebb2ca7b2273906/206303519/beoplay-p6---natural_26622372137_o.jpg.cf.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Men',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.angleLeft, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: GridView.builder(
          itemCount: loaddedProduct.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (itemWidth / itemHeight),
          ),
          itemBuilder: (ctx, i) {
            return ProductItem(
              id: loaddedProduct[i].id,
              imageUrl: loaddedProduct[i].image,
              title: loaddedProduct[i].title,
              desc: loaddedProduct[i].desc,
              cost: loaddedProduct[i].cost,
            );
          }),
    );
  }
}
