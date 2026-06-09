import 'package:flutter/material.dart';

import '../common/app_card.dart';

class TicketQrCard extends StatelessWidget {
  const TicketQrCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          const Text(
            'Scan QR Code',
            style: TextStyle(
              fontSize: 18,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            width: 220,
            height: 220,

            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius:
                  BorderRadius.circular(
                20,
              ),
            ),

            child: const Icon(
              Icons.qr_code_2,
              size: 160,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Show this QR Code at check-in.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}