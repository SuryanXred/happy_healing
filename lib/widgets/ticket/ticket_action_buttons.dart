import 'package:flutter/material.dart';

import '../common/custom_button.dart';

class TicketActionButtons
    extends StatelessWidget {

  final VoidCallback onDownload;
  final VoidCallback onHome;

  const TicketActionButtons({
    super.key,
    required this.onDownload,
    required this.onHome,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        CustomButton(
          text:
              'Download Ticket',
          icon:
              Icons.download,
          onPressed:
              onDownload,
        ),

        const SizedBox(
          height: 16,
        ),

        OutlinedButton(
          onPressed: onHome,

          child: const Text(
            'Back To Home',
          ),
        ),
      ],
    );
  }
}