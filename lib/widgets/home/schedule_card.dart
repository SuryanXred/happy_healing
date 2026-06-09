import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ScheduleCard extends StatelessWidget {

  final String title;
  final String time;
  final int slot;

  final Color color;
  final IconData icon;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.time,
    required this.slot,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 220,

      margin: const EdgeInsets.only(
        right: AppSize.itemGap,
      ),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(
          AppSize.cardRadius,
        ),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
              0.05,
            ),

            blurRadius: 12,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              Container(
                padding:
                    const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color:
                      color.withOpacity(0.15),

                  borderRadius:
                      BorderRadius.circular(
                    AppSize.radius,
                  ),
                ),

                child: Icon(
                  icon,
                  color: color,
                ),
              ),

              Text(
                '$slot Slots',

                style: TextStyle(
                  color: color,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              Text(
                title,

                style: const TextStyle(
                  fontSize: 18,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              Text(
                time,

                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}