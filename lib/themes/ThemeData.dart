import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    colorScheme: ColorScheme.light(
  onSurface: Colors.black54,
  surface: Colors.grey.shade300,
  primary: Colors.grey.shade500,
  onPrimary: Colors.white60,
  secondary: Colors.grey.shade300,
  tertiary: Colors.blueGrey.shade100,
  outline: Colors.black26,
));
ThemeData darkmode = ThemeData(colorScheme: const ColorScheme.dark());
