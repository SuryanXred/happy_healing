import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

import '../models/route_model.dart';
import '../models/booking_model.dart';

import '../screens/splash/splash_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/detail/route_detail_screen.dart';
import '../screens/booking/booking_screen.dart';
import '../screens/payment/payment_screen.dart';
import '../screens/ticket/e_ticket_screen.dart';

class AppPages {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {

      // =========================
      // SPLASH
      // =========================

      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) =>
              const SplashScreen(),
        );

      // =========================
      // HOME
      // =========================

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) =>
              const HomeScreen(),
        );

      // =========================
      // DETAIL
      // =========================

      case AppRoutes.detail:

        final route =
            settings.arguments
                as RouteModel;

        return MaterialPageRoute(
          builder: (_) =>
              RouteDetailScreen(
            route: route,
          ),
        );

      // =========================
      // BOOKING
      // =========================

      case AppRoutes.booking:

        final route =
            settings.arguments
                as RouteModel;

        return MaterialPageRoute(
          builder: (_) =>
              BookingScreen(
            route: route,
          ),
        );

      // =========================
      // PAYMENT
      // =========================

      case AppRoutes.payment:

        final booking =
            settings.arguments
                as BookingModel;

        return MaterialPageRoute(
          builder: (_) =>
              PaymentScreen(
            booking: booking,
          ),
        );

      // =========================
      // E-TICKET
      // =========================

      case AppRoutes.ticket:

        final booking =
            settings.arguments
                as BookingModel;

        return MaterialPageRoute(
          builder: (_) =>
              ETicketScreen(
            booking: booking,
          ),
        );

      // =========================
      // DEFAULT
      // =========================

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(
            body: Center(
              child: Text(
                'Page Not Found',
              ),
            ),
          ),
        );
    }
  }
}