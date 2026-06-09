import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  final EdgeInsetsGeometry padding;

  final EdgeInsetsGeometry? margin;

  final Color? color;

  final Border? border;

  final double radius;

  final List<BoxShadow>? boxShadow;

  const AppCard({
    super.key,

    required this.child,

    this.padding =
        const EdgeInsets.all(20),

    this.margin,

    this.color,

    this.border,

    this.radius = 24,

    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,

      padding: padding,

      decoration: BoxDecoration(
        color: color ?? Colors.white,

        borderRadius:
            BorderRadius.circular(
          radius,
        ),

        border: border,

        boxShadow:
            boxShadow ??
                const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(
                      0,
                      2,
                    ),
                  ),
                ],
      ),

      child: child,
    );
  }
}