import 'package:flutter/material.dart';

import '../models/route_model.dart';

class TicketProvider extends ChangeNotifier {

  RouteModel? route;

  DateTime? bookingDate;

  String session = '';

  int participants = 1;

  int totalPrice = 0;

  bool isPaid = false;

  /// SAVE TICKET
  void createTicket({

    required RouteModel route,

    required DateTime date,

    required String session,

    required int participants,

    required int totalPrice,
  }) {

    this.route = route;

    bookingDate = date;

    this.session = session;

    this.participants =
        participants;

    this.totalPrice =
        totalPrice;

    isPaid = true;

    notifyListeners();
  }

  /// CLEAR TICKET
  void clearTicket() {

    route = null;

    bookingDate = null;

    session = '';

    participants = 1;

    totalPrice = 0;

    isPaid = false;

    notifyListeners();
  }
}