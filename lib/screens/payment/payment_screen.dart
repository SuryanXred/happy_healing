import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../models/booking_model.dart';

import '../../widgets/common/custom_button.dart';

import '../../widgets/payment/booking_summary_card.dart';
import '../../widgets/payment/payment_method_tile.dart';
import '../../widgets/payment/payment_total_card.dart';
import '../../widgets/payment/security_info.dart';

import '../ticket/e_ticket_screen.dart';

class PaymentScreen extends StatefulWidget {
  final BookingModel booking;

  const PaymentScreen({
    super.key,
    required this.booking,
  });

  @override
  State<PaymentScreen> createState() =>
      _PaymentScreenState();
}

class _PaymentScreenState
    extends State<PaymentScreen> {

  String selectedPayment =
      'QRIS Payment';

  String formatPrice(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }

  @override
  Widget build(BuildContext context) {

    final booking = widget.booking;

    return Scaffold(
      backgroundColor:
          AppColors.background,

      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            Colors.transparent,
        centerTitle: true,

        title: const Text(
          'Payment',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        iconTheme:
            const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(
          AppSize.padding,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            BookingSummaryCard(
              booking: booking,
            ),

            const SizedBox(
              height:
                  AppSize.sectionGap,
            ),

            const Text(
              'Payment Method',

              style: TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 18,
            ),

            PaymentMethodTile(
              title:
                  'QRIS Payment',

              subtitle:
                  'Fast payment with QR code',

              icon: Icons.qr_code,

              isSelected:
                  selectedPayment ==
                      'QRIS Payment',

              onTap: () {
                setState(() {
                  selectedPayment =
                      'QRIS Payment';
                });
              },
            ),

            PaymentMethodTile(
              title:
                  'Bank Transfer',

              subtitle:
                  'Transfer via bank account',

              icon:
                  Icons.account_balance,

              isSelected:
                  selectedPayment ==
                      'Bank Transfer',

              onTap: () {
                setState(() {
                  selectedPayment =
                      'Bank Transfer';
                });
              },
            ),

            PaymentMethodTile(
              title:
                  'E-Wallet',

              subtitle:
                  'OVO, Dana, GoPay, ShopeePay',

              icon:
                  Icons.wallet,

              isSelected:
                  selectedPayment ==
                      'E-Wallet',

              onTap: () {
                setState(() {
                  selectedPayment =
                      'E-Wallet';
                });
              },
            ),

            const SizedBox(
              height:
                  AppSize.sectionGap,
            ),

            PaymentTotalCard(
              packagePrice:
                  formatPrice(
                booking.route.price,
              ),

              participants:
                  booking.participants,

              totalPrice:
                  formatPrice(
                booking.totalPrice,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            CustomButton(
              text: 'Pay Now',

              icon: Icons.lock,

              onPressed: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (_) =>
                        ETicketScreen(
                      booking:
                          booking,
                    ),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 20,
            ),

            const SecurityInfo(),

            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}