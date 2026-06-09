import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,

    scaffoldBackgroundColor:
        AppColors.background,

    fontFamily: 'Poppins',

    appBarTheme: const AppBarTheme(
      elevation: 0,

      centerTitle: true,

      backgroundColor:
          Colors.transparent,

      foregroundColor:
          Colors.black,
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),

    textTheme: const TextTheme(

      /// HEADLINE
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      /// TITLE
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),

      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),

      /// BODY
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
        height: 1.6,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        height: 1.5,
      ),

      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    ),

    elevatedButtonTheme:
        ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(

        backgroundColor:
            AppColors.primary,

        foregroundColor:
            Colors.white,

        elevation: 0,

        minimumSize: const Size(
          double.infinity,
          58,
        ),

        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(
            AppSize.radius,
          ),
        ),

        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    inputDecorationTheme:
        InputDecorationTheme(

      filled: true,

      fillColor: Colors.white,

      contentPadding:
          const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),

      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppSize.radius,
        ),

        borderSide: BorderSide.none,
      ),

      enabledBorder:
          OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppSize.radius,
        ),

        borderSide: BorderSide.none,
      ),

      focusedBorder:
          OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(
          AppSize.radius,
        ),

        borderSide: BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),
    ),

    cardTheme: CardThemeData(
      color: Colors.white,

      elevation: 0,

      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(
          AppSize.cardRadius,
        ),
      ),
    ),
  );
}