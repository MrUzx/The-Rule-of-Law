import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    // Yorqin rang
    secondary: Colors.teal,
    // O'rta rang
    background: Colors.white,
    // Yengil rang
    surface: Colors.grey[400]!,
    // Juda och rang
    onPrimary: Colors.white,
    // Qora rang
    onSecondary: Colors.black,
    // Qora rang
    onBackground: Colors.black,
    // Qora rang
    onSurface: Colors.black,
    // Qora rang
    error: Colors.red,
    // Qizil rang
    onError: Colors.white, // Oq rang
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 14.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0), // Radius
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontSize: 18.0),
    bodyMedium: TextStyle(color: Colors.black54, fontSize: 16.0),
    displayLarge: TextStyle(
        color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        color: Colors.white, fontSize: 24.0),
  ),
);
