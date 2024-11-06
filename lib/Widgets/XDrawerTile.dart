import 'package:flutter/material.dart';

class XDrawerTile extends StatelessWidget {
  final void Function()? onclick;
  final String text;
  final IconData icon;
  const XDrawerTile(
      {super.key,
      required this.onclick,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: colors.outline, width: 1.0)),
          // child: Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Icon(
          //         icon,
          //         color: colors.primary,
          //         size: 40.0,
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(
          //         text,
          //         style: TextStyle(
          //             fontSize: 20.0,
          //             color: colors.onSurface,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     )
          //   ],
          // ),
          child: ListTile(
            title: Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                color: colors.onSurface,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    color: colors.outline,
                  ),
                ],
              ),
            ),
            leading: Icon(
              icon,
              color: colors.primary,
              size: 40.0,
              shadows: [
                Shadow(
                  offset: const Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  color: colors.outline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
