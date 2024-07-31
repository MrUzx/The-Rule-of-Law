import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blue, // Yorqin rang
    secondary: Colors.teal, // O'rta rang
    background: Colors.white, // Yengil rang
    surface: Colors.grey[200]!, // Juda och rang
    onPrimary: Colors.black, // Qora rang
    onSecondary: Colors.black, // Qora rang
    onBackground: Colors.black, // Qora rang
    onSurface: Colors.black, // Qora rang
    error: Colors.red, // Qizil rang
    onError: Colors.white, // Oq rang
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.teal,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontSize: 16.0),
    bodyMedium: TextStyle(color: Colors.black54, fontSize: 14.0),
    displayLarge: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Colors.black54, fontSize: 24.0, fontWeight: FontWeight.w600),
  ),
);
