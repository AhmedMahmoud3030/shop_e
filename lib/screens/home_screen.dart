import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_e/colors.dart';
import 'package:shop_e/screens/cart_screen.dart';
import 'package:shop_e/screens/profile_screen.dart';

import 'over_view_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  final List<Widget> screens = [
    OverViewScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Explore ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
            icon: FaIcon(
              FontAwesomeIcons.arrowPointer,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
            icon: FaIcon(
              FontAwesomeIcons.opencart,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Account ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
