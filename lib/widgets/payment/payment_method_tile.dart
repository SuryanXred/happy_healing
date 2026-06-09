import 'package:flutter/material.dart';

import '../../core/colors.dart';

import '../common/app_card.dart';

class PaymentMethodTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AppCard(
        margin:
            const EdgeInsets.only(
          bottom: 16,
        ),

        padding:
            const EdgeInsets.all(18),

        color: isSelected
            ? AppColors.primary
                .withOpacity(0.1)
            : Colors.white,

        border: Border.all(
          color: isSelected
              ? AppColors.primary
              : Colors.transparent,
          width: 2,
        ),

        radius: 20,

        child: Row(
          children: [
            CircleAvatar(
              backgroundColor:
                  AppColors.primary,

              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [
                  Text(
                    title,
                    style:
                        const TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 4,
                  ),

                  Text(
                    subtitle,
                    style:
                        const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            if (isSelected)
              Icon(
                Icons.check_circle,
                color:
                    AppColors.primary,
              ),
          ],
        ),
      ),
    );
  }
}