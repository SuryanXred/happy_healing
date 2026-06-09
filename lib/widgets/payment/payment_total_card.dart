import 'package:flutter/material.dart';

import '../booking/summary_row.dart';

class PaymentTotalCard
    extends StatelessWidget {

  final String packagePrice;
  final int participants;
  final String totalPrice;

  const PaymentTotalCard({
    super.key,
    required this.packagePrice,
    required this.participants,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:
          const EdgeInsets.all(
        20,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(
          24,
        ),
      ),

      child: Column(
        children: [

          SummaryRow(
            title:
                'Package Price',

            value:
                packagePrice,
          ),

          const SizedBox(
            height: 14,
          ),

          SummaryRow(
            title:
                'Participants',

            value:
                '$participants',
          ),

          const Divider(
            height: 30,
          ),

          SummaryRow(
            title:
                'Total Payment',

            value:
                totalPrice,

            isTotal: true,
          ),
        ],
      ),
    );
  }
}