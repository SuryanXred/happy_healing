import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {

  final String text;

  const FacilityItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 14,
      ),

      child: Row(
        children: [

          const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}