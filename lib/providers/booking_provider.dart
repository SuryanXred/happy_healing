import 'package:flutter/material.dart';

class BookingProvider extends ChangeNotifier {

  /// BOOKING DATE
  DateTime selectedDate =
      DateTime.now();

  /// SESSION
  String selectedSession =
      'Morning';

  /// PAYMENT METHOD
  String paymentMethod =
      'QRIS Payment';

  /// PARTICIPANTS
  int participants = 1;

  /// AVAILABLE QUOTA
  int remainingQuota = 0;

  // =========================
  // GETTERS
  // =========================

  bool get hasDiscount =>
      participants >= 10;

  bool get isAvailable =>
      remainingQuota > 0;

  int get totalParticipants =>
      participants;

  // =========================
  // QUOTA
  // =========================

  void setQuota(
    int quota,
  ) {

    remainingQuota = quota;

    notifyListeners();
  }

  // =========================
  // PARTICIPANTS
  // =========================

  void addParticipant() {

    if (participants <
        remainingQuota) {

      participants++;

      notifyListeners();
    }
  }

  void removeParticipant() {

    if (participants > 1) {

      participants--;

      notifyListeners();
    }
  }

  // =========================
  // SESSION
  // =========================

  void changeSession(
    String session,
  ) {

    selectedSession = session;

    notifyListeners();
  }

  // =========================
  // DATE
  // =========================

  void changeDate(
    DateTime date,
  ) {

    selectedDate = date;

    notifyListeners();
  }

  // =========================
  // PAYMENT METHOD
  // =========================

  void changePaymentMethod(
    String method,
  ) {

    paymentMethod = method;

    notifyListeners();
  }

  // =========================
  // PRICE CALCULATION
  // =========================

  int calculateTotalPrice(
    int packagePrice,
  ) {

    int total =
        packagePrice *
            participants;

    if (hasDiscount) {

      total =
          (total * 0.85)
              .toInt();
    }

    return total;
  }

  // =========================
  // RESET BOOKING
  // =========================

  void resetBooking() {

    selectedDate =
        DateTime.now();

    selectedSession =
        'Morning';

    paymentMethod =
        'QRIS Payment';

    participants = 1;

    remainingQuota = 0;

    notifyListeners();
  }
}