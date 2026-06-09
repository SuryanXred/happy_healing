import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../models/route_model.dart';
import '../../models/booking_model.dart';

import '../../providers/booking_provider.dart';

import '../../widgets/common/custom_button.dart';
import '../../widgets/common/app_section.dart';

import '../../widgets/booking/booking_card.dart';
import '../../widgets/booking/participant_selector.dart';
import '../../widgets/booking/session_button.dart';
import '../../widgets/booking/summary_row.dart';

import '../payment/payment_screen.dart';

class BookingScreen extends StatelessWidget {
  final RouteModel route;

  const BookingScreen({
    super.key,
    required this.route,
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
    final bookingProvider =
        Provider.of<BookingProvider>(
      context,
    );

    final totalPrice =
        bookingProvider
            .calculateTotalPrice(
      route.price,
    );

    final isAvailable =
        bookingProvider
                .remainingQuota >
            0;

    return Scaffold(
      backgroundColor:
          AppColors.background,

      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Booking',
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

              /// ROUTE CARD
              BookingCard(
                route: route,
                price: formatPrice(
                  route.price,
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// DATE
              const AppSection(
                icon:
                    Icons.calendar_month,
                title:
                    'Choose Date',
              ),

              const SizedBox(
                height:
                    AppSize.itemGap,
              ),

              GestureDetector(
                onTap: () async {

                  DateTime?
                      pickedDate =
                      await showDatePicker(
                    context: context,
                    initialDate:
                        bookingProvider
                            .selectedDate,
                    firstDate:
                        DateTime.now(),
                    lastDate:
                        DateTime(2030),
                  );

                  if (pickedDate !=
                      null) {

                    bookingProvider
                        .changeDate(
                      pickedDate,
                    );
                  }
                },

                child: Container(
                  padding:
                      const EdgeInsets
                          .all(18),

                  decoration:
                      BoxDecoration(
                    color: Colors.white,

                    borderRadius:
                        BorderRadius
                            .circular(
                      AppSize.radius,
                    ),
                  ),

                  child: Row(
                    children: [

                      Icon(
                        Icons
                            .calendar_month,
                        color:
                            AppColors
                                .primary,
                      ),

                      const SizedBox(
                        width: 14,
                      ),

                      Text(
                        DateFormat(
                          'dd MMM yyyy',
                        ).format(
                          bookingProvider
                              .selectedDate,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// SESSION
              const AppSection(
                icon:
                    Icons.access_time,
                title:
                    'Choose Session',
              ),

              const SizedBox(
                height:
                    AppSize.itemGap,
              ),

              Row(
                children: [

                  Expanded(
                    child:
                        SessionButton(
                      title:
                          'Morning',
                      time:
                          '08:00 - 11:00',

                      isSelected:
                          bookingProvider
                                  .selectedSession ==
                              'Morning',

                      onTap: () {
                        bookingProvider
                            .changeSession(
                          'Morning',
                        );
                      },
                    ),
                  ),

                  const SizedBox(
                    width:
                        AppSize.itemGap,
                  ),

                  Expanded(
                    child:
                        SessionButton(
                      title:
                          'Afternoon',
                      time:
                          '13:00 - 16:00',

                      isSelected:
                          bookingProvider
                                  .selectedSession ==
                              'Afternoon',

                      onTap: () {
                        bookingProvider
                            .changeSession(
                          'Afternoon',
                        );
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 12,
              ),

              /// QUOTA
              Container(
                padding:
                    const EdgeInsets
                        .all(14),

                decoration:
                    BoxDecoration(
                  color:
                      Colors.orange
                          .shade50,

                  borderRadius:
                      BorderRadius
                          .circular(
                    AppSize.radius,
                  ),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons
                          .people_alt_outlined,
                      color:
                          Colors.orange,
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    Text(
                      'Remaining quota: ${bookingProvider.remainingQuota} slots',
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// PARTICIPANTS
              const AppSection(
                icon: Icons.people,
                title:
                    'Participants',
              ),

              const SizedBox(
                height:
                    AppSize.itemGap,
              ),

              ParticipantSelector(
                participants:
                    bookingProvider
                        .participants,

                onAdd: () {
                  bookingProvider
                      .addParticipant();
                },

                onRemove: () {
                  bookingProvider
                      .removeParticipant();
                },
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              /// PRICE SUMMARY
              Container(
                padding:
                    const EdgeInsets
                        .all(20),

                decoration:
                    BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                      BorderRadius
                          .circular(
                    24,
                  ),
                ),

                child: Column(
                  children: [

                    SummaryRow(
                      title:
                          'Package Price',
                      value:
                          formatPrice(
                        route.price,
                      ),
                    ),

                    const SizedBox(
                      height: 14,
                    ),

                    SummaryRow(
                      title:
                          'Participants',
                      value:
                          '${bookingProvider.participants} Person',
                    ),

                    if (bookingProvider
                        .hasDiscount)
                      ...[
                        const SizedBox(
                          height: 14,
                        ),

                        const SummaryRow(
                          title:
                              'Group Discount',
                          value:
                              '-15%',
                        ),
                      ],

                    const Divider(
                      height: 30,
                    ),

                    SummaryRow(
                      title:
                          'Total Price',
                      value:
                          formatPrice(
                        totalPrice,
                      ),
                      isTotal: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              /// CONTINUE PAYMENT
              CustomButton(
                text:
                    'Continue Payment',
                icon:
                    Icons.payment,

                onPressed:
                    isAvailable
                        ? () {

                            final booking =
                                BookingModel(
                              route:
                                  route,

                              date:
                                  bookingProvider
                                      .selectedDate,

                              session:
                                  bookingProvider
                                      .selectedSession,

                              participants:
                                  bookingProvider
                                      .participants,

                              totalPrice:
                                  totalPrice,
                            );

                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (_) =>
                                    PaymentScreen(
                                  booking:
                                      booking,
                                ),
                              ),
                            );
                          }
                        : null,
              ),

              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}