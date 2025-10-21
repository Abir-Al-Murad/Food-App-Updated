class Food {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<double> size;
  final String imageUrl;
  final String category;
  final String restaurantId;
  final String restaurantName;
  final List<String> ingredients;
  final List<String> tags;
  final double rating;
  final int totalReviews;
  final bool isPopular;
  final int discount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int deliveryTime;
  final double deliveryFee;

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.restaurantId,
    required this.restaurantName,
    required this.ingredients,
    required this.size,
    required this.tags,
    required this.rating,
    required this.totalReviews,
    required this.isPopular,
    required this.discount,
    required this.createdAt,
    required this.updatedAt,
    required this.deliveryTime,
    required this.deliveryFee,
  });

  factory Food.fromMap(Map<String, dynamic> data, String documentId) {
    return Food(
      id: documentId,
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
      imageUrl: data['imageUrl'] ?? '',
      category: data['category'] ?? '',
      restaurantId: data['restaurantId'] ?? '',
      restaurantName: data['restaurantName'] ?? '',
      ingredients: List<String>.from(data['ingredients'] ?? []),
      size: List<double>.from(data['size'] ?? []),
      tags: List<String>.from(data['tags'] ?? []),
      rating: (data['rating'] ?? 0).toDouble(),
      totalReviews: data['totalReviews'] ?? 0,
      isPopular: data['isPopular'] ?? false,
      discount: data['discount'] ?? 0,
      createdAt: (data['createdAt'])?.toDate() ?? DateTime.now(),
      updatedAt: (data['updatedAt'])?.toDate() ?? DateTime.now(),
      deliveryTime: data['deliveryTime'] ?? 30,
      deliveryFee: (data['deliveryFee'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'category': category,
      'restaurantId': restaurantId,
      'restaurantName': restaurantName,
      'ingredients': ingredients,
      'size': size,
      'tags': tags,
      'rating': rating,
      'totalReviews': totalReviews,
      'isPopular': isPopular,
      'discount': discount,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deliveryTime': deliveryTime,
      'deliveryFee': deliveryFee,
    };
  }
}
