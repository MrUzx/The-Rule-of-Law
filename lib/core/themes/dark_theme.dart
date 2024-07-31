import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.blueGrey[900]!, // Qorong'u rang
    secondary: Colors.deepOrange, // Kuchli rang
    background: Colors.black87, // Qorong'u fon
    surface: Colors.grey[850]!, // Qorong'u kulrang
    onPrimary: Colors.white, // Oq rang
    onSecondary: Colors.white, // Oq rang
    onBackground: Colors.white, // Oq rang
    onSurface: Colors.white, // Oq rang
    error: Colors.red, // Qizil rang
    onError: Colors.white, // Oq rang
  ),
  scaffoldBackgroundColor: Colors.black87,
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey[900],
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.deepOrange,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrange,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16.0),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14.0),
    displayLarge: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Colors.white70, fontSize: 24.0, fontWeight: FontWeight.w600),
  ),
);
