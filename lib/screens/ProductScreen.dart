import 'package:flutter/material.dart';
import '../data/dummydata.dart';
import '../widgets/productcard.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        backgroundColor: const Color(0xFF7B2D8B),
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: const Icon(Icons.local_offer, color: Colors.orange),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          return Productcard(product: dummyProducts[index]);
        },
      ),
    );
  }
}
