import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nvidia Graphics Card Details'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(widget.product.imageURL,width: 350,height: 350),
          Text("GPU NAME :- "+widget.product.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text("Price :- \$${widget.product.price}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Description :-"+widget.product.description,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
