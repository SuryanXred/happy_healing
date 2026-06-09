import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {

  final String title;
  final String value;

  const InfoRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 14,
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Text(
            title,

            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),

          Flexible(
            child: Text(
              value,

              textAlign:
                  TextAlign.end,

              style: const TextStyle(
                fontWeight:
                    FontWeight.bold,

                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}