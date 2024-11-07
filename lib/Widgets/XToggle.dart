import 'package:flutter/material.dart';

class XToggle extends StatefulWidget {
  const XToggle(
      {super.key,
      required this.label,
      required this.sublabel,
      required this.doIfOn});
  final String label, sublabel;
  final void Function(bool)? doIfOn;
  @override
  State<XToggle> createState() => _XToggleState();
}

class _XToggleState extends State<XToggle> {
  var state = false;
  void Onclick(bool) {
    setState(() {
      state = !state;
      widget.doIfOn!(state);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colors.primary,
            boxShadow: [
              BoxShadow(
                color: colors.outline,
                offset: Offset(-1.5, -1.5),
                blurRadius: 1.0,
              ),
              BoxShadow(
                  color: colors.outline,
                  offset: Offset(1.5, 1.5),
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
                    widget.label,
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
                  widget.sublabel,
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
            value: state,
            onChanged: Onclick,
            activeColor: colors.onPrimary,
          ),
        ]));
  }
}
