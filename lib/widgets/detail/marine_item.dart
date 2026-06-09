import 'package:flutter/material.dart';

class MarineItem extends StatelessWidget {

  final String emoji;
  final String name;

  const MarineItem({
    super.key,
    required this.emoji,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Text(
          emoji,

          style: const TextStyle(
            fontSize: 32,
          ),
        ),

        const SizedBox(height: 8),

        Text(name),
      ],
    );
  }
}