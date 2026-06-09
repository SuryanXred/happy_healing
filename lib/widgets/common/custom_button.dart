import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

// NOTE: AppText.body is used below.
// `AppText` is defined in core/constants.dart.


class CustomButton extends StatelessWidget {

  final String text;

  final VoidCallback? onPressed;

  final IconData? icon;

  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {

    final bool isDisabled =
        onPressed == null;

    return SizedBox(
      width: double.infinity,

      height: 58,

      child: ElevatedButton(

        onPressed:
            isLoading
                ? null
                : onPressed,

        style:
            ElevatedButton.styleFrom(

          elevation: 0,

          backgroundColor:
              isDisabled
                  ? Colors.grey.shade400
                  : AppColors.primary,

          foregroundColor:
              AppColors.white,

          disabledBackgroundColor:
              Colors.grey.shade400,

          shape:
              RoundedRectangleBorder(

            borderRadius:
                BorderRadius.circular(
              AppSize.radius,
            ),
          ),
        ),

        child:
            isLoading
                ? const SizedBox(
                    width: 22,
                    height: 22,

                    child:
                        CircularProgressIndicator(
                      strokeWidth: 2.5,

                      color:
                          AppColors.white,
                    ),
                  )

                : Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,

                    children: [

                      if (icon != null)
                        ...[

                        Icon(
                          icon,
                          size: 20,
                        ),

                        const SizedBox(
                          width: 10,
                        ),
                      ],

                      Text(
                        text,

                        style:
                            const TextStyle(
                          fontSize:
                              AppText.bodyLarge,


                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }
}