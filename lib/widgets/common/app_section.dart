import 'package:flutter/material.dart';

class AppSection extends StatelessWidget {

  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  const AppSection({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        Row(
          children: [

            if (icon != null)
              Icon(icon),

            if (icon != null)
              const SizedBox(width: 8),

            Text(
              title,

              style:
                  const TextStyle(
                fontSize: 20,

                fontWeight:
                    FontWeight.bold,
              ),
            ),
          ],
        ),

        if (onTap != null)
          TextButton(
            onPressed: onTap,

            child: const Text(
              'See All',
            ),
          ),
      ],
    );
  }
}