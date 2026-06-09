import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../models/booking_model.dart';

import '../../widgets/ticket/ticket_header.dart';
import '../../widgets/ticket/ticket_info_card.dart';
import '../../widgets/ticket/ticket_qr_card.dart';
import '../../widgets/ticket/ticket_summary.dart';

class ETicketScreen extends StatelessWidget {
  final BookingModel booking;

  const ETicketScreen({
    super.key,
    required this.booking,
  });

  String formatPrice(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,

        title: const Text(
          'E-Ticket',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          AppSize.padding,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            /// SUCCESS HEADER
            const TicketHeader(),

            const SizedBox(
              height: AppSize.sectionGap,
            ),

            /// TICKET INFO
            TicketInfoCard(
              route: booking.route,
              date: booking.date,
              session: booking.session,
              participants:
                  booking.participants,
            ),

            const SizedBox(
              height: AppSize.sectionGap,
            ),

            /// QR CODE
            const TicketQrCard(),

            const SizedBox(
              height: AppSize.sectionGap,
            ),

            /// TICKET SUMMARY
            TicketSummary(
              routeName:
                  booking.route.name,

              bookingId:
                  'HH-${booking.route.id}-001',

              date: DateFormat(
                'dd MMM yyyy',
              ).format(
                booking.date,
              ),

              session:
                  booking.session,

              participants:
                  booking.participants,

              paymentMethod:
                  'QRIS Payment',

              paymentStatus:
                  'Paid',

              totalPrice:
                  formatPrice(
                booking.totalPrice,
              ),
            ),

            const SizedBox(
              height: AppSize.sectionGap,
            ),
          ],
        ),
      ),
    );
  }
}