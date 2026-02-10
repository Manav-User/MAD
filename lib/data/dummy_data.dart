import '../models/product.dart';

/// Local dummy data (no backend).
///
/// Images are local assets. Put your images inside `assets/images/` and update
/// these paths if needed.
class DummyData {
  static const List<ProductCategory> categories = <ProductCategory>[
    ProductCategory.dogs,
    ProductCategory.cats,
    ProductCategory.birds,
    ProductCategory.accessories,
  ];

  static const List<Product> products = <Product>[
    Product(
      id: 'dog_1',
      name: 'Golden Retriever',
      category: ProductCategory.dogs,
      shortDescription: 'Friendly, energetic family dog.',
      description:
          'Golden Retrievers are intelligent, affectionate, and great with kids. '
          'They enjoy daily walks, playtime, and lots of attention.',
      imageAsset: 'assets/images/dog_1.jpg',
      price: 450.0,
    ),
    Product(
      id: 'dog_2',
      name: 'Pug',
      category: ProductCategory.dogs,
      shortDescription: 'Small, charming, and playful.',
      description:
          'Pugs are loving companions who enjoy a cozy home environment. '
          'They are playful and do well with moderate exercise.',
      imageAsset: 'assets/images/dog_2.jpg',
      price: 320.0,
    ),
    Product(
      id: 'dog_3',
      name: 'German Shepherd',
      category: ProductCategory.dogs,
      shortDescription: 'Smart, loyal, and protective.',
      description:
          'German Shepherds are intelligent working dogs that are very loyal to '
          'their families and enjoy active lifestyles.',
      imageAsset: 'assets/images/dog_3.jpg',
      price: 500.0,
    ),
    Product(
      id: 'dog_4',
      name: 'Beagle',
      category: ProductCategory.dogs,
      shortDescription: 'Curious, friendly scent hound.',
      description:
          'Beagles are energetic and curious dogs that love exploring scents '
          'and spending time with people.',
      imageAsset: 'assets/images/dog_4.jpg',
      price: 380.0,
    ),
    Product(
      id: 'dog_5',
      name: 'Labrador Retriever',
      category: ProductCategory.dogs,
      shortDescription: 'Playful and family‑friendly.',
      description:
          'Labradors are outgoing, even‑tempered dogs that enjoy swimming, '
          'fetch, and spending time with children.',
      imageAsset: 'assets/images/dog_5.jpg',
      price: 460.0,
    ),
    Product(
      id: 'cat_1',
      name: 'Persian Cat',
      category: ProductCategory.cats,
      shortDescription: 'Calm, fluffy, and elegant.',
      description:
          'Persian cats are known for their long coat and gentle personality. '
          'They love relaxed environments and regular grooming.',
      imageAsset: 'assets/images/cat_1.jpg',
      price: 380.0,
    ),
    Product(
      id: 'cat_2',
      name: 'Siamese Cat',
      category: ProductCategory.cats,
      shortDescription: 'Talkative, smart, and social.',
      description: 'Siamese cats are affectionate and vocal companions. '
          'They enjoy interactive play and bonding with their people.',
      imageAsset: 'assets/images/cat_2.jpg',
      price: 360.0,
    ),
    Product(
      id: 'cat_3',
      name: 'Maine Coon',
      category: ProductCategory.cats,
      shortDescription: 'Large, gentle, and playful.',
      description:
          'Maine Coons are big, friendly cats known for their fluffy tails and '
          'dog‑like personalities.',
      imageAsset: 'assets/images/cat_3.jpg',
      price: 420.0,
    ),
    Product(
      id: 'cat_4',
      name: 'British Shorthair',
      category: ProductCategory.cats,
      shortDescription: 'Calm with plush coat.',
      description:
          'British Shorthairs are calm, sturdy cats that enjoy relaxed homes '
          'and gentle affection.',
      imageAsset: 'assets/images/cat_4.jpg',
      price: 390.0,
    ),
    Product(
      id: 'cat_5',
      name: 'Bengal Cat',
      category: ProductCategory.cats,
      shortDescription: 'Active cat with wild pattern.',
      description:
          'Bengal cats are athletic and playful, with a striking spotted coat '
          'and high energy levels.',
      imageAsset: 'assets/images/cat_5.jpg',
      price: 450.0,
    ),
    Product(
      id: 'bird_1',
      name: 'Parrot',
      category: ProductCategory.birds,
      shortDescription:
          'Colorful(Mainly Green) cheerful, and easy to care for.',
      description:
          'Parakeets are small, social birds that enjoy toys and gentle interaction. '
          'Provide a clean cage, fresh water, and a balanced seed/pellet diet.',
      imageAsset: 'assets/images/bird_1.jpg',
      price: 90.0,
    ),
    Product(
      id: 'bird_2',
      name: 'Cockatiel',
      category: ProductCategory.birds,
      shortDescription: 'Friendly bird with a cute crest.',
      description:
          'Cockatiels are gentle, trainable, and often enjoy whistling. '
          'They need space to move and daily social interaction.',
      imageAsset: 'assets/images/bird_2.jpg',
      price: 140.0,
    ),
    Product(
      id: 'bird_3',
      name: 'Macaw',
      category: ProductCategory.birds,
      shortDescription: 'Large, colorful parrot.',
      description:
          'Macaws are intelligent birds that require spacious housing, mental '
          'stimulation, and experienced owners.',
      imageAsset: 'assets/images/bird_3.jpg',
      price: 800.0,
    ),
    Product(
      id: 'bird_4',
      name: 'Lovebird',
      category: ProductCategory.birds,
      shortDescription: 'Small, social, and affectionate.',
      description:
          'Lovebirds are active little parrots that enjoy toys and social time '
          'with their companions.',
      imageAsset: 'assets/images/bird_4.jpg',
      price: 110.0,
    ),
    Product(
      id: 'bird_5',
      name: 'Canary',
      category: ProductCategory.birds,
      shortDescription: 'Known for beautiful singing.',
      description:
          'Canaries are small birds famous for their song and bright colors. '
          'They do well in calm environments.',
      imageAsset: 'assets/images/bird_5.jpg',
      price: 75.0,
    ),
    Product(
      id: 'acc_1',
      name: 'Pet Food Bowl',
      category: ProductCategory.accessories,
      shortDescription: 'Stainless steel, easy to clean.',
      description: 'A durable stainless steel bowl suitable for food or water. '
          'Non-slip base helps keep it in place.',
      imageAsset: 'assets/images/acc_1.jpg',
      accessoryFor: AccessoryFor.dogs,
      price: 12.99,
    ),
    Product(
      id: 'acc_2',
      name: 'Pet Collar',
      category: ProductCategory.accessories,
      shortDescription: 'Comfortable fit with adjustable strap.',
      description:
          'Soft and durable collar with an adjustable strap and strong buckle. '
          'Great for daily use.',
      imageAsset: 'assets/images/acc_2.jpg',
      accessoryFor: AccessoryFor.cats,
      price: 9.49,
    ),
    Product(
      id: 'acc_3',
      name: 'Bird Cage Toy Set',
      category: ProductCategory.accessories,
      shortDescription: 'Colorful toys for active birds.',
      description:
          'A set of bright toys and perches to keep your bird entertained and '
          'encouraged to exercise.',
      imageAsset: 'assets/images/acc_3.jpg',
      accessoryFor: AccessoryFor.birds,
      price: 15.99,
    ),
    Product(
      id: 'acc_4',
      name: 'Dog Leash',
      category: ProductCategory.accessories,
      shortDescription: 'Durable nylon leash for walks.',
      description:
          'A strong yet comfortable leash suitable for daily dog walks and '
          'basic training.',
      imageAsset: 'assets/images/acc_4.jpg',
      accessoryFor: AccessoryFor.dogs,
      price: 13.50,
    ),
    Product(
      id: 'acc_5',
      name: 'Cat Scratching Post',
      category: ProductCategory.accessories,
      shortDescription: 'Helps protect your furniture.',
      description:
          'A sturdy scratching post wrapped in sisal rope, perfect for cats to '
          'stretch and sharpen their claws.',
      imageAsset: 'assets/images/acc_5.jpg',
      accessoryFor: AccessoryFor.cats,
      price: 29.99,
    ),
  ];

  static List<Product> byCategory(ProductCategory category) {
    return products
        .where((p) => p.category == category)
        .toList(growable: false);
  }
}
