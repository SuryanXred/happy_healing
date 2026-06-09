import 'package:flutter/material.dart';

import '../../core/colors.dart';

class SummaryRow extends StatelessWidget {

  final String title;
  final String value;

  final bool isTotal;

  const SummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        Text(
          title,

          style: TextStyle(
            color: isTotal
                ? Colors.black
                : Colors.grey,

            fontSize:
                isTotal ? 18 : 16,

            fontWeight:
                isTotal
                    ? FontWeight.bold
                    : FontWeight.normal,
          ),
        ),

        Text(
          value,

          style: TextStyle(
            color: isTotal
                ? AppColors.primary
                : Colors.black,

            fontSize:
                isTotal ? 20 : 16,

            fontWeight:
                FontWeight.bold,
          ),
        ),
      ],
    );
  }
}