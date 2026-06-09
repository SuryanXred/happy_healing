import 'route_model.dart';

class BookingModel {
  final RouteModel route;

  final DateTime date;

  final String session;

  final int participants;

  final int totalPrice;

  final String paymentMethod;

  final String bookingCode;

  final String status;

  const BookingModel({
    required this.route,
    required this.date,
    required this.session,
    required this.participants,
    required this.totalPrice,

    this.paymentMethod = '',

    this.bookingCode = '',

    this.status = 'Pending',
  });

  factory BookingModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return BookingModel(
      route: RouteModel.fromJson(
        json['route'],
      ),

      date: DateTime.parse(
        json['date'],
      ),

      session:
          json['session'] ?? '',

      participants:
          json['participants'] ?? 1,

      totalPrice:
          json['totalPrice'] ?? 0,

      paymentMethod:
          json['paymentMethod'] ?? '',

      bookingCode:
          json['bookingCode'] ?? '',

      status:
          json['status'] ??
              'Pending',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'route': route.toJson(),

      'date':
          date.toIso8601String(),

      'session': session,

      'participants':
          participants,

      'totalPrice':
          totalPrice,

      'paymentMethod':
          paymentMethod,

      'bookingCode':
          bookingCode,

      'status': status,
    };
  }

  BookingModel copyWith({
    RouteModel? route,
    DateTime? date,
    String? session,
    int? participants,
    int? totalPrice,
    String? paymentMethod,
    String? bookingCode,
    String? status,
  }) {
    return BookingModel(
      route: route ?? this.route,

      date: date ?? this.date,

      session:
          session ?? this.session,

      participants:
          participants ??
              this.participants,

      totalPrice:
          totalPrice ??
              this.totalPrice,

      paymentMethod:
          paymentMethod ??
              this.paymentMethod,

      bookingCode:
          bookingCode ??
              this.bookingCode,

      status:
          status ?? this.status,
    );
  }
}