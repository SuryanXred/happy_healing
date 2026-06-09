import 'package:flutter/material.dart';

import '../../core/colors.dart';

class SessionButton extends StatelessWidget {

  final String title;
  final String time;
  final bool isSelected;
  final VoidCallback onTap;

  const SessionButton({
    super.key,
    required this.title,
    required this.time,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration:
            const Duration(
                milliseconds: 250),

        padding:
            const EdgeInsets.all(18),

        decoration: BoxDecoration(

          color: isSelected
              ? AppColors.primary
              : Colors.white,

          borderRadius:
              BorderRadius.circular(
                  18),

          boxShadow: [

            if (isSelected)
              BoxShadow(
                color: AppColors
                    .primary
                    .withOpacity(0.3),

                blurRadius: 12,

                offset:
                    const Offset(0, 4),
              ),
          ],
        ),

        child: Column(
          children: [

            Text(
              title,

              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Colors.black,

                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 8),

            Text(
              time,

              style: TextStyle(
                color: isSelected
                    ? Colors.white70
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}