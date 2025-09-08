import 'package:flutter/material.dart';

// Easily swap primary/secondary colors for full app rebrand
final ThemeData mPaycomTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.teal,
    secondary: Colors.coral,
    surface: Colors.white,
    background: Colors.teal.shade50,
    onPrimary: Colors.white,
    error: Colors.red,
  ),
  fontFamily: 'Inter',
  useMaterial3: true,
);