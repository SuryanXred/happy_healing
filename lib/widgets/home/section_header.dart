import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

class AppSection extends StatelessWidget {

  final String title;
  final VoidCallback? onTap;
  final String actionText;

  const AppSection({
    super.key,
    required this.title,
    this.onTap,
    this.actionText = 'See All',
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.padding,
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Text(
            title,

            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          if (onTap != null)
            TextButton(
              onPressed: onTap,

              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize:
                    MaterialTapTargetSize
                        .shrinkWrap,
              ),

              child: Text(
                actionText,

                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}