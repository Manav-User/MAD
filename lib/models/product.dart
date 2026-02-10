import 'package:flutter/material.dart';

/// Categories shown on the home screen.
enum ProductCategory { dogs, cats, birds, accessories }

/// Animal type that an accessory is meant for.
enum AccessoryFor { dogs, cats, birds }

extension ProductCategoryX on ProductCategory {
  String get label {
    switch (this) {
      case ProductCategory.dogs:
        return 'Dogs';
      case ProductCategory.cats:
        return 'Cats';
      case ProductCategory.birds:
        return 'Birds';
      case ProductCategory.accessories:
        return 'Accessories';
    }
  }

  IconData get icon {
    switch (this) {
      case ProductCategory.dogs:
        return Icons.pets;
      case ProductCategory.cats:
        return Icons.pets_outlined;
      case ProductCategory.birds:
        return Icons.flutter_dash;
      case ProductCategory.accessories:
        return Icons.shopping_bag_outlined;
    }
  }
}

/// A pet or accessory item shown in listings.
class Product {
  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.shortDescription,
    required this.description,
    required this.imageAsset,
    this.price,
    this.accessoryFor,
  });

  final String id;
  final String name;
  final ProductCategory category;
  final String shortDescription;
  final String description;

  /// Local asset path, e.g. `assets/images/dog_1.jpg`.
  final String imageAsset;

  /// Optional price. Accessories may have a price; some pets may not.
  final double? price;

  /// For accessories only: which animal this product is for.
  final AccessoryFor? accessoryFor;
}

