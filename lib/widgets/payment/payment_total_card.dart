import 'package:flutter/material.dart';

import '../common/app_card.dart';

import '../booking/summary_row.dart';

class PaymentTotalCard extends StatelessWidget {
  final String packagePrice;
  final int participants;
  final String totalPayment;

  const PaymentTotalCard({
    super.key,
    required this.packagePrice,
    required this.participants,
    required this.totalPayment,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          SummaryRow(
            title: 'Package Price',
            value: packagePrice,
          ),

          const SizedBox(height: 14),

          SummaryRow(
            title: 'Participants',
            value:
                participants.toString(),
          ),

          const Divider(
            height: 30,
          ),

          SummaryRow(
            title: 'Total Payment',
            value: totalPayment,
            isTotal: true,
          ),
        ],
      ),
    );
  }
}