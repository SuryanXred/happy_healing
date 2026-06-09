import 'package:flutter/material.dart';

import '../../core/colors.dart';

class SectionTitle extends StatelessWidget {

  final IconData icon;
  final String title;

  const SectionTitle({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

        Icon(
          icon,
          color: AppColors.primary,
        ),

        const SizedBox(width: 10),

        Text(
          title,

          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}