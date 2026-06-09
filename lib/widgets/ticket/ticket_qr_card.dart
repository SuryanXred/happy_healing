import 'package:flutter/material.dart';

class TicketQrCard extends StatelessWidget {
  const TicketQrCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(24),
      ),
      child: const Column(
        children: [
          Icon(
            Icons.qr_code_2,
            size: 180,
          ),
          SizedBox(height: 12),
          Text(
            'SNK-2026-001',
            style: TextStyle(
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}