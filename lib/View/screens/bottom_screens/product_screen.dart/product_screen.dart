import 'package:flutter/material.dart';

import '../home/widgets/categories.dart';
import '../home/widgets/search_form.dart';
import 'widgets/prodect_details_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  // final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: product.bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const BackButton(color: Colors.black),
          title: SearchForm(),
        ),
        body: ListView(
          children: [Categories(), ProductDetails()],
        ));
  }
}
