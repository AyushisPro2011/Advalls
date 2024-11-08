import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    colorScheme: ColorScheme.light(
        onSurface: Colors.black45,
        surface: Colors.grey.shade300,
        primary: Colors.grey.shade600,
        onPrimary: Colors.white60,
        secondary: Colors.grey.shade300,
        tertiary: Colors.blueGrey.shade100,
        outline: Colors.black54,
        shadow: Colors.white38,
        inverseSurface: Colors.white54));
ThemeData darkmode = ThemeData(
    colorScheme: const ColorScheme.dark(
        onSurface: Color.fromARGB(255, 173, 173, 173),
        surface: Colors.black87,
        primary: Color.fromARGB(255, 192, 192, 192),
        onPrimary: Color.fromARGB(137, 63, 59, 59),
        secondary: Color.fromARGB(255, 74, 70, 70),
        tertiary: Colors.blueGrey,
        outline: Color.fromARGB(137, 237, 230, 230),
        shadow: Color.fromARGB(97, 41, 38, 38),
        inverseSurface: Color.fromARGB(137, 134, 127, 127)));
