import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Primary color
    primaryColor: primary,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black87);
}
