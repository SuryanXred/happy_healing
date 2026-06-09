import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';

import '../../models/route_model.dart';

import '../common/app_card.dart';

import 'ticket_info_row.dart';

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
    return AppCard(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [
          const Text(
            'Ticket Information',
            style: TextStyle(
              fontSize: 20,
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
                  AppSize.radius,
                ),

                child: Image.network(
                  route.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  route.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          TicketInfoRow(
            title: 'Date',
            value: DateFormat(
              'dd MMM yyyy',
            ).format(date),
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
        ],
      ),
    );
  }
}