import 'package:flutter/material.dart';

import '../common/app_card.dart';
import 'ticket_info_row.dart';

class TicketSummary extends StatelessWidget {
  final String routeName;
  final String bookingId;
  final String date;
  final String session;
  final int participants;
  final String paymentMethod;
  final String paymentStatus;
  final String totalPrice;

  const TicketSummary({
    super.key,
    required this.routeName,
    required this.bookingId,
    required this.date,
    required this.session,
    required this.participants,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.totalPrice,
  });

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
              fontSize: 18,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          TicketInfoRow(
            title: 'Booking ID',
            value: bookingId,
          ),

          TicketInfoRow(
            title: 'Route',
            value: routeName,
          ),

          TicketInfoRow(
            title: 'Date',
            value: date,
          ),

          TicketInfoRow(
            title: 'Session',
            value: session,
          ),

          TicketInfoRow(
            title: 'Participants',
            value:
                '$participants Person',
          ),

          TicketInfoRow(
            title: 'Payment',
            value: paymentMethod,
          ),

          TicketInfoRow(
            title: 'Status',
            value: paymentStatus,
          ),

          const Divider(
            height: 30,
          ),

          TicketInfoRow(
            title: 'Total Payment',
            value: totalPrice,
            isHighlighted: true,
          ),
        ],
      ),
    );
  }
}