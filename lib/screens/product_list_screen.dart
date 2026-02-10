import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({
    super.key,
    required this.category,
    required this.onAddToCart,
  });

  final ProductCategory category;
  final ValueChanged<Product> onAddToCart;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  AccessoryFor? _selectedAccessoryFilter;

  @override
  Widget build(BuildContext context) {
    List<Product> items = DummyData.byCategory(widget.category);

    if (widget.category == ProductCategory.accessories &&
        _selectedAccessoryFilter != null) {
      items = items
          .where((Product p) => p.accessoryFor == _selectedAccessoryFilter)
          .toList();
    }

    final double width = MediaQuery.sizeOf(context).width;
    final int columns = width >= 900
        ? 3
        : width >= 600
            ? 2
            : 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.label),
      ),
      body: Column(
        children: <Widget>[
          if (widget.category == ProductCategory.accessories)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Row(
                children: <Widget>[
                  FilterChip(
                    label: const Text('All'),
                    selected: _selectedAccessoryFilter == null,
                    onSelected: (_) {
                      setState(() {
                        _selectedAccessoryFilter = null;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Dogs'),
                    selected: _selectedAccessoryFilter == AccessoryFor.dogs,
                    onSelected: (_) {
                      setState(() {
                        _selectedAccessoryFilter = AccessoryFor.dogs;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Cats'),
                    selected: _selectedAccessoryFilter == AccessoryFor.cats,
                    onSelected: (_) {
                      setState(() {
                        _selectedAccessoryFilter = AccessoryFor.cats;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Birds'),
                    selected: _selectedAccessoryFilter == AccessoryFor.birds,
                    onSelected: (_) {
                      setState(() {
                        _selectedAccessoryFilter = AccessoryFor.birds;
                      });
                    },
                  ),
                ],
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  // Slightly taller tiles to avoid overflow on smaller screens.
                  childAspectRatio: columns == 1 ? 0.8 : 0.9,
                ),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final Product product = items[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (_) => ProductDetailScreen(
                            product: product,
                            onAddToCart: widget.onAddToCart,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
