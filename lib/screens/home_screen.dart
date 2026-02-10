import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../models/product.dart';
import '../widgets/category_card.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onAddToCart,
  });

  final ValueChanged<Product> onAddToCart;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final int columns = width >= 900
        ? 4
        : width >= 600
            ? 3
            : 2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/images/icon.jpg',
              height: 28,
              width: 28,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            const Text('Pet Shop'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.05,
          ),
          itemCount: DummyData.categories.length,
          itemBuilder: (BuildContext context, int index) {
            final ProductCategory category = DummyData.categories[index];
            return CategoryCard(
              category: category,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => ProductListScreen(
                      category: category,
                      onAddToCart: onAddToCart,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
