import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../models/route_model.dart';

import '../../widgets/common/custom_button.dart';

import '../../widgets/detail/facility_item.dart';
import '../../widgets/detail/info_item.dart';
import '../../widgets/detail/marine_item.dart';

import '../booking/booking_screen.dart';

class RouteDetailScreen extends StatelessWidget {
  final RouteModel route;

  const RouteDetailScreen({
    super.key,
    required this.route,
  });

  /// FORMAT PRICE
  String formatPrice(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }

  /// DIFFICULTY COLOR
  Color getDifficultyColor() {
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
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Stack(
        children: [

          /// HEADER IMAGE
          SizedBox(
            height: 350,
            width: double.infinity,

            child: Image.network(
              route.image,
              fit: BoxFit.cover,
            ),
          ),

          /// DARK OVERLAY
          Container(
            height: 350,
            color: Colors.black.withOpacity(0.25),
          ),

          /// CONTENT
          SafeArea(
            child: Column(
              children: [

                /// TOP BAR
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.padding,
                    vertical: 10,
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      /// BACK BUTTON
                      CircleAvatar(
                        backgroundColor: Colors.white,

                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },

                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),

                      /// FAVORITE BUTTON
                      CircleAvatar(
                        backgroundColor: Colors.white,

                        child: IconButton(
                          onPressed: () {},

                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                /// DETAIL CONTAINER
                Expanded(
                  flex: 2,

                  child: Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(
                      AppSize.padding,
                    ),

                    decoration: const BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),

                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                          /// TITLE + BADGE
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              Expanded(
                                child: Text(
                                  route.name,

                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 8,
                                ),

                                decoration: BoxDecoration(
                                  color:
                                      getDifficultyColor()
                                          .withOpacity(0.15),

                                  borderRadius:
                                      BorderRadius.circular(20),
                                ),

                                child: Text(
                                  route.difficulty,

                                  style: TextStyle(
                                    color:
                                        getDifficultyColor(),

                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// RATING
                          Row(
                            children: [

                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),

                              const SizedBox(width: 6),

                              Text(
                                '${route.rating}',
                                style: const TextStyle(
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),

                              const SizedBox(width: 6),

                              Text(
                                '(${route.reviews} Reviews)',

                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// INFO ROW
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              InfoItem(
                                icon: Icons.water,
                                title: 'Depth',
                                value: route.depth,
                              ),

                              const InfoItem(
                                icon: Icons.timer,
                                title: 'Duration',
                                value: '3 Hours',
                              ),

                              InfoItem(
                                icon: Icons.people,
                                title: 'Quota',
                                value:
                                    '${route.quota} Slots',
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// DESCRIPTION
                          const Text(
                            'About Route',

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            route.description,

                            style: const TextStyle(
                              height: 1.7,
                              color: Colors.black87,
                            ),
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// MARINE LIFE
                          const Text(
                            'Marine Life',

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 18),

                          const Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              MarineItem(
                                emoji: '🐠',
                                name: 'Clown Fish',
                              ),

                              MarineItem(
                                emoji: '🪸',
                                name: 'Coral',
                              ),

                              MarineItem(
                                emoji: '⭐',
                                name: 'Starfish',
                              ),

                              MarineItem(
                                emoji: '🐢',
                                name: 'Turtle',
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// FACILITIES
                          const Text(
                            'Included Facilities',

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 18),

                          Column(
                            children: route.facilities
                                .map(
                                  (facility) =>
                                      FacilityItem(
                                    text: facility,
                                  ),
                                )
                                .toList(),
                          ),

                          const SizedBox(
                            height: AppSize.sectionGap,
                          ),

                          /// SAFETY INFO
                          Container(
                            padding:
                                const EdgeInsets.all(18),

                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,

                              borderRadius:
                                  BorderRadius.circular(
                                AppSize.radius,
                              ),
                            ),

                            child: const Row(
                              children: [

                                Icon(
                                  Icons
                                      .warning_amber_rounded,

                                  color: Colors.orange,
                                ),

                                SizedBox(width: 14),

                                Expanded(
                                  child: Text(
                                    'Weather conditions may affect snorkeling schedules.',

                                    style: TextStyle(
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 35),

                          /// PRICE + BUTTON
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                children: [

                                  const Text(
                                    'Price',

                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    formatPrice(
                                      route.price,
                                    ),

                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight:
                                          FontWeight.bold,

                                      color:
                                          AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                width: 180,

                                child: CustomButton(
                                  text: 'Book Now',

                                  icon:
                                      Icons.arrow_forward,

                                  onPressed: () {
                                    Navigator.push(
                                      context,

                                      MaterialPageRoute(
                                        builder: (_) =>
                                            BookingScreen(
                                          route: route,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
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