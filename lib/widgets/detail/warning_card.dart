import 'package:flutter/material.dart';

class WarningCard extends StatelessWidget {

  final String text;

  const WarningCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.orange.shade50,

        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          const Icon(
            Icons.warning_amber_rounded,
            color: Colors.orange,
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Text(
              text,

              style: const TextStyle(
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}