import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

class SectionContainer extends StatelessWidget {

  final Widget child;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final Color? color;

  final double? radius;

  final List<BoxShadow>? boxShadow;

  const SectionContainer({
    super.key,

    required this.child,

    this.padding,

    this.margin,

    this.color,

    this.radius,

    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: margin,

      padding:
          padding ??
          const EdgeInsets.all(
            AppSize.padding,
          ),

      decoration: BoxDecoration(

        color:
            color ??
            Colors.white,

        borderRadius:
            BorderRadius.circular(
          radius ??
              AppSize.cardRadius,
        ),

        boxShadow:
            boxShadow ??
            const [

              BoxShadow(
                color: Colors.black12,

                blurRadius: 8,

                offset: Offset(0, 2),
              ),
            ],
      ),

      child: child,
    );
  }
}