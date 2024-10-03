import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      onTap: onTap,
    );
  }
}
