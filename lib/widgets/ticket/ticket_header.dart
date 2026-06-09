import 'package:flutter/material.dart';

class TicketHeader extends StatelessWidget {
  const TicketHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.check_circle,
          size: 90,
          color: Colors.green,
        ),
        SizedBox(height: 16),
        Text(
          'Booking Successful',
          style: TextStyle(
            fontSize: 26,
            fontWeight:
                FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Your ticket is ready',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}