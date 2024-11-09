import 'package:flutter/material.dart';

class XIconLabelButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? subLabel;
  final void Function()? onclick;
  const XIconLabelButton(
      {super.key,
      required this.icon,
      required this.label,
      this.subLabel,
      this.onclick});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final bool hasSubLabel;

    if (subLabel == null) {
      hasSubLabel = false;
    } else {
      hasSubLabel = true;
    }

    return GestureDetector(
      onTap: onclick,
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: colors.secondary,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: hasSubLabel
                    ? Column(
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
                            subLabel!,
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
                      )
                    : Text(
                        label,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: colors.onPrimary,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
