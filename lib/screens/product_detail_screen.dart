import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  final Product product;
  final ValueChanged<Product> onAddToCart;

  @override
  Widget build(BuildContext context) {
    final TextTheme text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: Image.asset(
                product.imageAsset,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  alignment: Alignment.center,
                  child: const Icon(Icons.image_not_supported_outlined, size: 40),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            product.name,
            style: text.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              Chip(
                label: Text(product.category.label),
                avatar: Icon(product.category.icon, size: 18),
              ),
              if (product.price != null)
                Chip(
                  label: Text('\$${product.price!.toStringAsFixed(2)}'),
                  avatar: const Icon(Icons.sell_outlined, size: 18),
                ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            product.description,
            style: text.bodyLarge,
          ),
          const SizedBox(height: 18),
          FilledButton.icon(
            onPressed: () {
              onAddToCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${product.name} added to cart'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.add_shopping_cart_outlined),
            label: const Text('Add to Cart'),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Inquiry submitted (demo)'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.chat_bubble_outline),
            label: const Text('Inquiry'),
          ),
        ],
      ),
    );
  }
}

