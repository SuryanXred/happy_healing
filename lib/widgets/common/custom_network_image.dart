import 'package:flutter/material.dart';

import '../../core/constants.dart';

class CustomNetworkImage extends StatelessWidget {

  final String imageUrl;

  final double width;
  final double height;

  final double radius;

  final BoxFit fit;

  const CustomNetworkImage({
    super.key,

    required this.imageUrl,

    this.width = double.infinity,
    this.height = 200,

    this.radius = AppSize.radius,

    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius:
          BorderRadius.circular(
        radius,
      ),

      child: Image.network(
        imageUrl,

        width: width,
        height: height,

        fit: fit,

        loadingBuilder: (
          context,
          child,
          loadingProgress,
        ) {

          if (loadingProgress == null) {
            return child;
          }

          return Container(
            width: width,
            height: height,

            alignment: Alignment.center,

            color: Colors.grey.shade200,

            child:
                const CircularProgressIndicator(),
          );
        },

        errorBuilder: (
          context,
          error,
          stackTrace,
        ) {

          return Container(
            width: width,
            height: height,

            alignment: Alignment.center,

            color: Colors.grey.shade200,

            child: const Icon(
              Icons.broken_image_outlined,

              size: 40,

              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}