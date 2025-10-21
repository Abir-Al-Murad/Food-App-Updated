import 'food_model.dart';

class RestaurantModel {
  final String id;
  final String name;
  final String location;
  final String imageUrl;
  final String contactNumber;
  final String email;
  final String openingHours;
  final bool isOpen;
  final double rating;
  final int totalReviews;
  final List<String> tags;
  final List<Food> menu;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.location,
    this.imageUrl = '',
    this.contactNumber = '',
    this.email = '',
    this.openingHours = '',
    this.isOpen = true,
    this.rating = 0,
    this.totalReviews = 0,
    this.tags = const [],
    this.menu = const [],
  });

  factory RestaurantModel.fromMap(Map<String, dynamic> data, String documentId,
      {List<Food> menu = const []}) {

    return RestaurantModel(
      id: documentId,
      name: data['name'] ?? '',
      location: data['location'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      contactNumber: data['contactNumber'] ?? '',
      email: data['email'] ?? '',
      openingHours: data['openingHours'] ?? '',
      isOpen: data['isOpen'] ?? true,
      rating: (data['rating'] ?? 0).toDouble(),
      totalReviews: data['totalReviews'] ?? 0,
      tags: List<String>.from(data['tags'] ?? []),
      menu: menu,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'imageUrl': imageUrl,
      'contactNumber': contactNumber,
      'email': email,
      'openingHours': openingHours,
      'isOpen': isOpen,
      'rating': rating,
      'totalReviews': totalReviews,
      'tags': tags,
    };
  }
}
