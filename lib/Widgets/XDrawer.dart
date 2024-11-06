import 'package:advalls/Widgets/XDrawerTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Xdrawer extends StatelessWidget {
  const Xdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: colors.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.only(top: 25.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: colors.outline, width: 4.0))),
              child: Text(
                "AdValls",
                style: TextStyle(
                  fontSize: 40.0,
                  shadows: [
                    Shadow(
                      offset: const Offset(1.0, 1.0),
                      blurRadius: 1.0,
                      color: colors.outline,
                    ),
                  ],
                ),
              )),
          Column(
            children: [
              XDrawerTile(
                icon: Icons.home_sharp,
                text: "Homepage",
                onclick: () {
                  Navigator.pushReplacementNamed(context, "/homepage");
                },
              ),
              XDrawerTile(
                icon: Icons.settings,
                text: "Settings",
                onclick: () {
                  Navigator.pushReplacementNamed(context, "/settings");
                },
              ),
              XDrawerTile(
                icon: Icons.image_search_rounded,
                text: "Browse Wallpapers",
                onclick: () {
                  Navigator.pushReplacementNamed(context, "/browse");
                },
              ),
            ],
          ),
          XDrawerTile(
              onclick: () {
                SystemNavigator.pop();
              },
              text: "Exit App",
              icon: Icons.exit_to_app)
        ],
      ),
    );
  }
}
