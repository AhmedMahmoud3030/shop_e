
import 'package:flutter/material.dart';
import 'package:shop_e/screens/home_screen.dart';
import 'package:shop_e/screens/product_details.dart';
import 'package:shop_e/screens/products_screen.dart';

import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Shop',
      theme: ThemeData(),
      routes: {
        '/': (context) => SignInScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ProductsScreen.routeName: (context) => ProductsScreen(),
        ProductDetails.routeName: (context) => ProductDetails(),
      },
    );
  }
}
