import 'package:flutter/material.dart';

import '../common/custom_button.dart';

class TicketActionButtons
    extends StatelessWidget {

  final VoidCallback onDownload;
  final VoidCallback onShare;

  const TicketActionButtons({
    super.key,
    required this.onDownload,
      required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Download Ticket',
          icon: Icons.download,

          onPressed: onDownload,
        ),

        const SizedBox(
          height: 16,
        ),

        OutlinedButton.icon(
          onPressed: onShare,

          icon: const Icon(
            Icons.share,
          ),

          label: const Text(
            'Share Ticket',
          ),

          style:
              OutlinedButton.styleFrom(
            minimumSize:
                const Size(
              double.infinity,
              55,
            ),
          ),
        ),
      ],
    );
  }
}