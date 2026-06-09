import 'package:flutter/material.dart';

import '../../widgets/booking/summary_row.dart';

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
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          const Text(
            'Ticket Summary',
            style: TextStyle(
              fontSize: 18,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          SummaryRow(
            title: 'Route',
            value: routeName,
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Booking ID',
            value: bookingId,
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Date',
            value: date,
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Session',
            value: session,
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Participants',
            value:
                '$participants Person',
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Payment Method',
            value: paymentMethod,
          ),

          const SizedBox(
            height: 12,
          ),

          SummaryRow(
            title: 'Payment Status',
            value: paymentStatus,
          ),

          const Divider(
            height: 30,
          ),

          SummaryRow(
            title: 'Total Payment',
            value: totalPrice,
            isTotal: true,
          ),
        ],
      ),
    );
  }
}