//TODO : copy the UI logic from XToggle to make the widget without errors and use
//them in the proper place where UI says to

import 'package:flutter/material.dart';

class XDropDown extends StatefulWidget {
  const XDropDown(
      {super.key,
      required this.label,
      required this.sublabel,
      required this.list});
  final String label;
  final String sublabel;
  final List<String> list;

  @override
  State<XDropDown> createState() => _XDropDownState();
}

class _XDropDownState extends State<XDropDown> {
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
          DropdownMenu(
              initialSelection: widget.list.first,
              menuStyle: MenuStyle(
                  side: WidgetStatePropertyAll(
                      BorderSide(color: colors.outline))),
              textStyle: TextStyle(
                color: colors.secondary,
                fontSize: 20.0,
                shadows: [
                  Shadow(
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    color: colors.outline,
                  ),
                ],
              ),
              dropdownMenuEntries: widget.list
                  .map<DropdownMenuEntry>(
                      (item) => DropdownMenuEntry(value: item, label: item))
                  .toList())
        ]));
  }
}
