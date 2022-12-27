import 'package:flutter/material.dart';

import '../../../../../models/products.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: demo_product.length,
        itemBuilder: (context, index) => ProductDetailsCard(
          image: demo_product[index].image,
          bgColor: demo_product[index].bgColor,
          press: () {},
          price: demo_product[index].price,
          title: demo_product[index].title,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(16 / 2),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Image.asset(
                  image,
                  height: 132,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16 / 2),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 16 / 4),
                  Text(
                    "\$" + price.toString(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                ),
              ),
              Text(
                "Colors",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 16 / 2),
              // Row(
              //   children: const [
              //     ColorDot(
              //       color: Color(0xFFBEE8EA),
              //       isActive: false,
              //     ),
              //     ColorDot(
              //       color: Color(0xFF141B4A),
              //       isActive: true,
              //     ),
              //     ColorDot(
              //       color: Color(0xFFF4E5C3),
              //       isActive: false,
              //     ),
              //   ],
              // ),
              const SizedBox(height: 16 * 2),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Text("Add to Cart"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
