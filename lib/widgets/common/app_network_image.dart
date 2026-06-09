import 'package:flutter/material.dart';

class AppNetworkImage
    extends StatelessWidget {

  final String imageUrl;
  final double width;
  final double height;
  final double radius;

  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.radius = 18,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(radius),

      child: Image.network(
        imageUrl,

        width: width,
        height: height,

        fit: BoxFit.cover,

        errorBuilder:
            (_, __, ___) =>
                const Icon(
          Icons.image_not_supported,
        ),
      ),
    );
  }
}