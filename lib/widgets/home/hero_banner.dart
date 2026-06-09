import 'package:flutter/material.dart';

import '../../core/constants.dart';

import '../common/custom_button.dart';

class HeroBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onPressed;

  const HeroBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.padding,
      ),

      height: 230,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.cardRadius,
        ),

        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),

      child: Container(
        padding: const EdgeInsets.all(24),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.cardRadius,
          ),

          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.1),
              Colors.black.withOpacity(0.7),
            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          mainAxisAlignment:
              MainAxisAlignment.end,

          children: [
            Text(
              title,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              subtitle,

              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              width: 170,

              child: CustomButton(
                text: 'Book Now',

                icon: Icons.arrow_forward,

                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}