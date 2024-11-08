import 'package:flutter/material.dart';

class XToggle extends StatelessWidget {
  const XToggle(
      {super.key,
      required this.label,
      required this.sublabel,
      required this.doIfOn,
      required this.value});
  final String label, sublabel;
  final void Function(bool)? doIfOn;
  final bool value;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Container(
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colors.primary,
            boxShadow: [
              BoxShadow(
                color: colors.outline,
                offset: const Offset(-1.5, -1.5),
                blurRadius: 1.0,
              ),
              BoxShadow(
                  color: colors.outline,
                  offset: const Offset(1.5, 1.5),
                  blurRadius: 1.0)
            ]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    label,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: colors.onPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
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
                Text(
                  sublabel,
                  style: TextStyle(
                    color: colors.secondary,
                    fontSize: 12.0,
                    shadows: [
                      Shadow(
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 1.0,
                        color: colors.outline,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          Switch(
            value: value,
            onChanged: doIfOn,
            activeColor: colors.onPrimary,
          ),
        ]));
  }
}
