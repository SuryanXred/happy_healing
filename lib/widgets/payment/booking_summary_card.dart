import 'package:flutter/material.dart';

import '../../models/booking_model.dart';
import '../../core/colors.dart';

import 'info_row.dart';

class BookingSummaryCard extends StatelessWidget {
  final BookingModel booking;

  const BookingSummaryCard({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [
          const Text(
            'Booking Summary',
            style: TextStyle(
              fontSize: 22,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(
                  18,
                ),

                child: Image.network(
                  booking.route.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,

                  children: [
                    Text(
                      booking.route.name,

                      style:
                          const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    Text(
                      booking
                          .route
                          .difficulty,

                      style:
                          const TextStyle(
                        color:
                            Colors.grey,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Rp ${booking.route.price}',

                      style: TextStyle(
                        color:
                            AppColors
                                .primary,

                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          InfoRow(
            title: 'Date',

            value:
                '${booking.date.day}/${booking.date.month}/${booking.date.year}',
          ),

          InfoRow(
            title: 'Session',

            value: booking.session,
          ),

          InfoRow(
            title: 'Participants',

            value:
                '${booking.participants} Person',
          ),
        ],
      ),
    );
  }
}