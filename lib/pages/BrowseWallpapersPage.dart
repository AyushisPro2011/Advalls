import 'package:advalls/Widgets/XDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrowseWallpapersPage extends StatelessWidget {
  const BrowseWallpapersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wallpapers",
              style: TextStyle(
                  color: colors.onPrimary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        backgroundColor: colors.primary,
        actions: [
          IconButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              icon: const Icon(
                Icons.exit_to_app,
                size: 25.0,
              ))
        ],
      ),
      body: const Column(),
      drawer: const Xdrawer(),
    );
  }
}
