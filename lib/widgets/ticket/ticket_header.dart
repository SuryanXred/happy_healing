import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../common/app_card.dart';

class TicketHeader extends StatelessWidget {
  const TicketHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.green.shade50,

      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor:
                Colors.green.shade100,

            child: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 42,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Booking Successful',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Your snorkeling ticket is ready.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}