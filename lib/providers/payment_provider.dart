import 'package:flutter/material.dart';

class PaymentProvider
    extends ChangeNotifier {

  String selectedPayment =
      'QRIS Payment';

  void selectPayment(
    String payment,
  ) {

    selectedPayment = payment;

    notifyListeners();
  }
}