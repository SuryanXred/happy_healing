import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

class HomeHeader extends StatelessWidget {

  final String location;
  final String region;
  final String profileImage;

  const HomeHeader({
    super.key,
    required this.location,
    required this.region,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.padding,
        vertical: 16,
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          /// LOCATION
          Expanded(
            child: Row(
              children: [

                Container(
                  padding:
                      const EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    color: AppColors.primary
                        .withOpacity(0.1),

                    borderRadius:
                        BorderRadius.circular(
                      AppSize.radius,
                    ),
                  ),

                  child: const Icon(
                    Icons.location_on,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(
                  width: AppSize.itemGap,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(
                        location,

                        maxLines: 1,

                        overflow:
                            TextOverflow.ellipsis,

                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight:
                              FontWeight.bold,

                          color:
                              AppColors.black,
                        ),
                      ),

                      const SizedBox(height: 2),

                      Text(
                        region,

                        maxLines: 1,

                        overflow:
                            TextOverflow.ellipsis,

                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            width: AppSize.itemGap,
          ),

          /// ACTIONS
          Row(
            children: [

              /// NOTIFICATION
              GestureDetector(
                onTap: () {},

                child: Container(
                  padding:
                      const EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius:
                        BorderRadius.circular(
                      AppSize.radius,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.05),

                        blurRadius: 10,
                      ),
                    ],
                  ),

                  child: const Icon(
                    Icons.notifications_none,
                  ),
                ),
              ),

              const SizedBox(
                width: AppSize.itemGap,
              ),

              /// PROFILE IMAGE
              Container(
                width: 45,
                height: 45,

                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(
                    AppSize.radius,
                  ),

                  image: DecorationImage(
                    image:
                        NetworkImage(profileImage),

                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}