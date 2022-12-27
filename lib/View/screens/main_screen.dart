 

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Controller/bottom_nav_provider.dart';
import 'bottom_navbar.dart';
import 'bottom_screens/team_screen.dart';

class MainScreen extends StatelessWidget {
 MainScreen( {Key? key}) : super(key: key);

final screens = const [
  Center(child: Text('Home', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  Center(child: Text('Loans', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  Center(child: Text('Contracts', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  Team(),
  Center(child: Text('Chat', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
];
@override
Widget build(BuildContext context) {
  final provider = context.watch<BottomNavigationBarProvider>();

  return SafeArea(
    child: Scaffold(
      body: screens[provider.currentIndex],
      bottomNavigationBar: MyNavigationBar(),
    ),
  );

}
}








