import 'package:flutter/material.dart';
import 'package:product/models/product.dart';
import 'package:product/widgets/product_tile.dart';
import 'package:product/screens/product_detail_screen.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> product = [
    Product(
      title: 'Nvidia RTX 3070 8GB',
      description: 'RTX 3070 is built for 1440p/4k gaming, better performance, and great value.',
      price: 329.99,
      imageURL: 'https://m.media-amazon.com/images/I/71ARYlN8f1S._AC_UF894,1000_QL80_.jpg',
    ),
    Product(
      title: 'Nvidia RTX 3080 10GB GDDR6X',
      description: 'RTX 3080 delivers ultra performance to get higher FPS.',
      price: 449.99,
      imageURL: 'https://images.stockx.com/images/NVIDIA-GIGABYTE-GeForce-RTX-3080-Ti-AORUS-MASTER-8G-Graphics-Card-GV-N306TAORUS-M-8GD.jpg',
    ),
    Product(
      title: 'Nvidia RTX 3090 24GB',
      description: 'RTX 3090 is the most powerful card, supporting 4k 120 Hz and 8k high-fidelity games.',
      price: 749.99,
      imageURL: 'https://www.zotac.com/download/files/styles/org/public/product_main_image/graphics_cards/zt-a30900q-30p-image01_0.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: product[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
