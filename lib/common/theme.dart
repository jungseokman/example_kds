import 'package:example_kds/common/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 17,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.blueColor1,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    scaffoldBackgroundColor: AppColors.grayColor4,
  );
}
