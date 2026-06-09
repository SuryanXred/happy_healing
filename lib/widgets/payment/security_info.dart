import 'package:flutter/material.dart';

import '../common/app_card.dart';

class SecurityInfo extends StatelessWidget {
  const SecurityInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.green.shade50,
      radius: 20,

      child: Row(
        children: [
          const Icon(
            Icons.security,
            color: Colors.green,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              'Secure payment protected by Happy Healing.',
              style: TextStyle(
                color:
                    Colors.grey.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}