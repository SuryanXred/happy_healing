import 'package:flutter/material.dart';

import '../../core/colors.dart';

import '../common/custom_button.dart';

class RoutePriceSection extends StatelessWidget {

  final String price;
  final VoidCallback onPressed;

  const RoutePriceSection({
    super.key,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              'Price',

              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              price,

              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,

                color: AppColors.primary,
              ),
            ),
          ],
        ),

        SizedBox(
          width: 180,

          child: CustomButton(
            text: 'Book Now',

            icon: Icons.arrow_forward,

            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}