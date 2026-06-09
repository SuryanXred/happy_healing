import 'package:flutter/material.dart';

import '../../core/colors.dart';

class InfoItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;

  const InfoItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Icon(
          icon,
          color: AppColors.primary,
        ),

        const SizedBox(height: 8),

        Text(
          title,

          style: const TextStyle(
            color: Colors.grey,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          value,

          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}