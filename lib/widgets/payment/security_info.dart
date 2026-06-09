import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

class SecurityInfo extends StatelessWidget {
  const SecurityInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(
        AppSize.padding,
      ),

      decoration: BoxDecoration(
        color: Colors.green.shade50,

        borderRadius:
            BorderRadius.circular(
          AppSize.radius,
        ),
      ),

      child: Row(
        children: [

          const Icon(
            Icons.security,
            color: Colors.green,
          ),

          const SizedBox(
            width: 12,
          ),

          Expanded(
            child: Text(
              'Secure payment protected by Happy Healing',

              style: TextStyle(
                color:
                    Colors.grey.shade800,
                fontWeight:
                    FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}