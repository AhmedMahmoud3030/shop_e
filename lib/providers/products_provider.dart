import 'package:flutter/material.dart';
import 'package:shop_e/models/porduct.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
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

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }
}
