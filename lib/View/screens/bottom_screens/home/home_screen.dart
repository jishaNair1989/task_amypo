import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/banner_card.dart';
import 'widgets/categories.dart';
import 'widgets/coupen_card.dart';
import 'widgets/hot_products.dart';
import 'widgets/popular_products.dart';
import 'widgets/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/menu.svg"),
        ),
        title: SearchForm(),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(16),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Categories(),
          ),
          const BannerCard(),
          Text(
            "Order Online",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Text(
            "Collect in Store",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const PopularProducts(),
          const HotProducts(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Coupens",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const CoupenCard(),
        ],
      ),
    );
  }
}
