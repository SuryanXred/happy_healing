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

  String generateBookingId() {
    return 'HH-${booking.route.id}-${booking.date.day}${booking.date.month}${booking.date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat(
          'dd MMM yyyy',
        ).format(
          booking.date,
        );

    return Scaffold(
      backgroundColor:
          AppColors.background,

      appBar: AppBar(
        elevation: 0,

        backgroundColor:
            Colors.transparent,

        centerTitle: true,

        title: const Text(
          'E-Ticket',

          style: TextStyle(
            color: Colors.black,
          ),
        ),

        iconTheme:
            const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.all(
            AppSize.padding,
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,

            children: [

              /// SUCCESS HEADER
              const TicketHeader(),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// TICKET INFORMATION
              TicketInfoCard(
                route:
                    booking.route,

                date:
                    booking.date,

                session:
                    booking.session,

                participants:
                    booking
                        .participants,
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// QR CODE
              const TicketQrCard(),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// BOOKING SUMMARY
              TicketSummary(
                routeName:
                    booking.route.name,

                bookingId:
                    generateBookingId(),

                date:
                    formattedDate,

                session:
                    booking.session,

                participants:
                    booking
                        .participants,

                paymentMethod:
                    'QRIS Payment',

                paymentStatus:
                    'Paid',

                totalPrice:
                    formatPrice(
                  booking
                      .totalPrice,
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}