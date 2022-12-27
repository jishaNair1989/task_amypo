import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teams/models/products.dart';

import '../../Controller/bottom_nav_provider.dart';
import 'bottom_screens/home/home_screen.dart';
import 'bottom_screens/product_screen.dart/product_screen.dart';
import 'bottom_screens/team_screen.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  final screens = const [
    // Center(
    //     child: Text('Home',
    //         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    HomeScreen(),
    // Center(
    //     child: Text('Products',
    //         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    ProductScreen(),
    Center(
        child: Text('Person',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    Team(),
  ];
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomNavigationBarProvider>();

    return Scaffold(
        body: screens[provider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.currentIndex = index;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.paid_rounded),
                label: 'Products',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.request_page),
              label: 'Person',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_rounded),
              label: 'Cart',
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
        ));
  }
}
