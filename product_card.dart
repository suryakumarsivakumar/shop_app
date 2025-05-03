import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final int index;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color:
            (index % 2 == 0)
                ? Color.fromRGBO(216, 240, 253, 1)
                : Color.fromRGBO(245, 247, 249, 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 5),
          Text('\$ $price', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 5),
          Image.asset(image, height: 175),
        ],
      ),
    );
  }
}
