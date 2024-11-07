import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    colorScheme: ColorScheme.light(
        onSurface: Colors.black45,
        surface: Colors.grey.shade300,
        primary: Colors.grey.shade500,
        onPrimary: Colors.white60,
        secondary: Colors.grey.shade300,
        tertiary: Colors.blueGrey.shade100,
        outline: Colors.black54,
        shadow: Colors.white38,
        inverseSurface: Colors.white54));
ThemeData darkmode = ThemeData(colorScheme: const ColorScheme.dark());
