import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../models/booking_model.dart';

import '../common/app_card.dart';
import 'info_row.dart';

class BookingSummaryCard extends StatelessWidget {
  final BookingModel booking;

  const BookingSummaryCard({
    super.key,
    required this.booking,
  });

  String formatPrice(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }

  String formatDate(DateTime date) {
    return DateFormat(
      'dd MMM yyyy',
      'id_ID',
    ).format(date);
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
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

          const SizedBox(
            height: AppSize.sectionGap,
          ),

          _RouteInfo(
            image:
                booking.route.image,
            name:
                booking.route.name,
            difficulty:
                booking.route.difficulty,
            price: formatPrice(
              booking.route.price,
            ),
          ),

          const SizedBox(
            height: AppSize.sectionGap,
          ),

          TicketInfoRow(
            title: 'Date',
            value: formatDate(
              booking.date,
            ),
          ),

          TicketInfoRow(
            title: 'Session',
            value: booking.session,
          ),

          TicketInfoRow(
            title: 'Participants',
            value:
                '${booking.participants} Person',
          ),
        ],
      ),
    );
  }
}

class _RouteInfo extends StatelessWidget {
  final String image;
  final String name;
  final String difficulty;
  final String price;

  const _RouteInfo({
    required this.image,
    required this.name,
    required this.difficulty,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(
            AppSize.radius,
          ),

          child: Image.network(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(
          width: AppSize.itemGap,
        ),

        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,

            children: [
              Text(
                name,

                style:
                    const TextStyle(
                  fontSize: 20,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                difficulty,

                style:
                    const TextStyle(
                  color: Colors.grey,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}