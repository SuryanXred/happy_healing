import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/colors.dart';
import '../../models/route_model.dart';

class RouteCard extends StatelessWidget {

  final RouteModel route;
  final VoidCallback onTap;
  final VoidCallback? onFavoriteTap;
  final bool isFavorite;

  const RouteCard({
    super.key,
    required this.route,
    required this.onTap,
    this.onFavoriteTap,
    this.isFavorite = false,
  });

  String formatPrice(int price) {

    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }

  Color difficultyColor() {

    switch (route.difficulty) {

      case 'Beginner':
        return Colors.green;

      case 'Intermediate':
        return Colors.orange;

      case 'Advanced':
        return Colors.red;

      default:
        return AppColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 220,

        margin: const EdgeInsets.only(
          right: 16,
        ),

        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(28),
        ),

        child: Stack(
          children: [

            /// IMAGE
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(28),

              child: Image.network(
                route.image,

                height: 280,
                width: double.infinity,

                fit: BoxFit.cover,
              ),
            ),

            /// OVERLAY
            Container(
              height: 280,

              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(28),

                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [

                    Colors.black.withOpacity(0.1),

                    Colors.black.withOpacity(0.65),
                  ],
                ),
              ),
            ),

            /// FAVORITE BUTTON
            Positioned(
              top: 16,
              right: 16,

              child: GestureDetector(
                onTap: onFavoriteTap,

                child: CircleAvatar(
                  backgroundColor:
                      Colors.white,

                  child: Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,

                    color: Colors.red,
                  ),
                ),
              ),
            ),

            /// CONTENT
            Positioned(
              left: 18,
              right: 18,
              bottom: 18,

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  /// DIFFICULTY
                  Container(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),

                    decoration: BoxDecoration(
                      color: difficultyColor(),

                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: Text(
                      route.difficulty,

                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,

                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// TITLE
                  Text(
                    route.name,

                    style: const TextStyle(
                      color: Colors.white,

                      fontWeight:
                          FontWeight.bold,

                      fontSize: 22,
                    ),
                  ),

                  const SizedBox(height: 8),

                  /// RATING
                  Row(
                    children: [

                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        '${route.rating} (${route.reviews} reviews)',

                        style: const TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// PRICE + QUOTA
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,

                    children: [

                      Text(
                        formatPrice(
                          route.price,
                        ),

                        style: const TextStyle(
                          color: Colors.white,

                          fontWeight:
                              FontWeight.bold,

                          fontSize: 20,
                        ),
                      ),

                      Text(
                        '${route.quota} slots left',

                        style: const TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}