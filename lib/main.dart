import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme.dart';

import 'providers/booking_provider.dart';
import 'providers/payment_provider.dart';
import 'providers/route_provider.dart';
import 'providers/ticket_provider.dart';
import 'providers/favorite_provider.dart';

import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';

void main() {

  runApp(

    MultiProvider(

      providers: [

        ChangeNotifierProvider(
          create: (_) =>
              BookingProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) =>
              PaymentProvider(),
        ),
      ],

      child: const HappyHealingApp(),
    ),
  );
}

class HappyHealingApp
    extends StatelessWidget {

  const HappyHealingApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner:
          false,

      title: 'Happy Healing',

      theme: AppTheme.lightTheme,


      initialRoute: '/',

      routes: {

        '/': (context) =>
            const SplashScreen(),

        '/home': (context) =>
            const HomeScreen(),
      },
    );
  }
}