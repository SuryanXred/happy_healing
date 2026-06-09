import 'package:flutter/material.dart';

import '../../core/colors.dart';

class PaymentTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  final bool isSelected;

  final VoidCallback onTap;

  const PaymentTile({
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

      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16,
        ),

        padding: const EdgeInsets.all(
          18,
        ),

        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary
                  .withOpacity(0.1)
              : Colors.white,

          borderRadius:
              BorderRadius.circular(
            20,
          ),

          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : Colors.transparent,

            width: 2,
          ),
        ),

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

            const SizedBox(
              width: 16,
            ),

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
                      fontWeight:
                          FontWeight.bold,

                      fontSize: 16,
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