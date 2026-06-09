import '../../models/route_model.dart';

List<RouteModel> snorkelingRoutes = [

  RouteModel(
    id: 1,

    name: 'Coral Garden',

    image:
        'https://images.unsplash.com/photo-1544551763-46a013bb70d5?q=80&w=1200',

    difficulty: 'Beginner',

    depth: '2 - 5m',

    description:
        'Perfect for beginners with shallow coral reefs and colorful tropical fish.',

    price: 85000,

    rating: 4.8,

    reviews: 124,

    quota: 12,

    facilities: [
      'Snorkeling Gear',
      'Tour Guide',
      'Insurance',
      'Life Jacket',
    ],
  ),

  RouteModel(
    id: 2,

    name: 'Blue Lagoon',

    image:
        'https://images.unsplash.com/photo-1682686580391-615b1f28e1c8?q=80&w=1200',

    difficulty: 'Intermediate',

    depth: '5 - 8m',

    description:
        'Explore deeper waters with richer marine biodiversity and unique coral formations.',

    price: 125000,

    rating: 4.9,

    reviews: 98,

    quota: 8,

    facilities: [
      'Snorkeling Gear',
      'Underwater Photo',
      'Tour Guide',
      'Insurance',
    ],
  ),

  RouteModel(
    id: 3,

    name: 'Deep Coral',

    image:
        'https://images.unsplash.com/photo-1524704796725-9fc3044a58b2?q=80&w=1200',

    difficulty: 'Advanced',

    depth: 'Open Sea',

    description:
        'Premium snorkeling experience with rare coral species, turtles, and deep ocean scenery.',

    price: 175000,

    rating: 5.0,

    reviews: 76,

    quota: 5,

    facilities: [
      'Premium Gear',
      'Professional Guide',
      'Insurance',
      'Free Drink',
      'Underwater Photo',
    ],
  ),
];