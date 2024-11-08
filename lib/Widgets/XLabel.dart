import 'package:flutter/material.dart';

class XLabel extends StatelessWidget {
  final String text;
  const XLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
            color: colors.onSurface,
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
