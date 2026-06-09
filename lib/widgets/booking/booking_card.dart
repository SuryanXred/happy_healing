import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';
import '../../models/route_model.dart';

import '../common/app_card.dart';

class BookingCard extends StatelessWidget {
  final RouteModel route;
  final String price;

  const BookingCard({
    super.key,
    required this.route,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(18),

      child: Row(
        children: [
          /// IMAGE
          ClipRRect(
            borderRadius:
                BorderRadius.circular(
              AppSize.radius,
            ),

            child: Image.network(
              route.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(
            width: AppSize.itemGap,
          ),

          /// INFO
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                Text(
                  route.name,

                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                Text(
                  route.difficulty,

                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                /// DEPTH BADGE
                Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),

                  decoration:
                      BoxDecoration(
                    color: AppColors
                        .secondary
                        .withOpacity(0.15),

                    borderRadius:
                        BorderRadius.circular(
                      20,
                    ),
                  ),

                  child: Text(
                    route.depth,

                    style: TextStyle(
                      color:
                          AppColors.secondary,

                      fontWeight:
                          FontWeight.bold,

                      fontSize: 12,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Text(
                  price,

                  style: TextStyle(
                    color:
                        AppColors.primary,

                    fontWeight:
                        FontWeight.bold,

                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}