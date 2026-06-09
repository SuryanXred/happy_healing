import 'package:flutter/material.dart';

class ParticipantSelector
    extends StatelessWidget {

  final int participants;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const ParticipantSelector({
    super.key,
    required this.participants,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:
          const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,

        children: [

          const Text(
            'Total Participants',

            style: TextStyle(
              fontSize: 16,
            ),
          ),

          Row(
            children: [

              IconButton(
                onPressed: onRemove,

                icon: const Icon(
                  Icons.remove_circle,
                ),
              ),

              Text(
                '$participants',

                style: const TextStyle(
                  fontSize: 20,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              IconButton(
                onPressed: onAdd,

                icon: const Icon(
                  Icons.add_circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}