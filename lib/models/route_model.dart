class RouteModel {
  final int id;

  final String name;
  final String image;
  final String difficulty;
  final String depth;

  final String description;

  final int price;

  final double rating;
  final int reviews;

  final int quota;

  final List<String> facilities;

  const RouteModel({
    required this.id,
    required this.name,
    required this.image,
    required this.difficulty,
    required this.depth,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.quota,
    required this.facilities,
  });

  factory RouteModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteModel(
      id: json['id'] ?? 0,

      name: json['name'] ?? '',

      image: json['image'] ?? '',

      difficulty:
          json['difficulty'] ?? '',

      depth: json['depth'] ?? '',

      description:
          json['description'] ?? '',

      price: json['price'] ?? 0,

      rating:
          (json['rating'] ?? 0)
              .toDouble(),

      reviews:
          json['reviews'] ?? 0,

      quota: json['quota'] ?? 0,

      facilities:
          List<String>.from(
        json['facilities'] ?? [],
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'difficulty': difficulty,
      'depth': depth,
      'description': description,
      'price': price,
      'rating': rating,
      'reviews': reviews,
      'quota': quota,
      'facilities': facilities,
    };
  }

  RouteModel copyWith({
    int? id,
    String? name,
    String? image,
    String? difficulty,
    String? depth,
    String? description,
    int? price,
    double? rating,
    int? reviews,
    int? quota,
    List<String>? facilities,
  }) {
    return RouteModel(
      id: id ?? this.id,

      name: name ?? this.name,

      image: image ?? this.image,

      difficulty:
          difficulty ??
              this.difficulty,

      depth: depth ?? this.depth,

      description:
          description ??
              this.description,

      price: price ?? this.price,

      rating:
          rating ?? this.rating,

      reviews:
          reviews ?? this.reviews,

      quota: quota ?? this.quota,

      facilities:
          facilities ??
              this.facilities,
    );
  }
}