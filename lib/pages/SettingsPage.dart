import 'package:advalls/Widgets/XDrawer.dart';
import 'package:advalls/Widgets/XIconLabelButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Settings",
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
      body: const Column(
        children: [
          XIconLabelButton(
            icon: Icons.toggle_off,
            label: "Yay",
          ),
          XIconLabelButton(
            icon: Icons.import_contacts,
            label: "Lol",
            subLabel: "Lorem Ipsum dolor emet",
          )
        ],
      ),
      drawer: const Xdrawer(),
    );
  }
}
