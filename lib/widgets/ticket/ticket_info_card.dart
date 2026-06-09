import 'package:flutter/material.dart';

import '../../models/route_model.dart';
import '../payment/info_row.dart';

class TicketInfoCard extends StatelessWidget {
  final RouteModel route;
  final DateTime date;
  final String session;
  final int participants;

  const TicketInfoCard({
    super.key,
    required this.route,
    required this.date,
    required this.session,
    required this.participants,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(24),
      ),

      child: Column(
        children: [

          InfoRow(
            title: 'Route',
            value: route.name,
          ),

          InfoRow(
            title: 'Date',
            value:
                '${date.day}/${date.month}/${date.year}',
          ),

          InfoRow(
            title: 'Session',
            value: session,
          ),

          InfoRow(
            title: 'Participants',
            value:
                '$participants Person',
          ),
        ],
      ),
    );
  }
}