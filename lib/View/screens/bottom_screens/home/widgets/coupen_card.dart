import 'package:flutter/material.dart';

import 'package:teams/models/products.dart';

class CoupenCard extends StatelessWidget {
  const CoupenCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo_coupens.length,
        itemBuilder: (context, index) => CoupenImgCard(
          image: demo_coupens[index].image,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}

class CoupenImgCard extends StatelessWidget {
  const CoupenImgCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        height: 200,
        padding: const EdgeInsets.all(16 / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Image.asset(
            image,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
