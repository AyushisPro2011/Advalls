import 'package:advalls/Widgets/XDrawer.dart';
import 'package:advalls/Widgets/XIconLabelButton.dart';
import 'package:advalls/Widgets/XLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        shadowColor: colors.primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                  color: colors.primary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        backgroundColor: colors.inverseSurface,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            XLabel(text: "Settings"),
            XIconLabelButton(
              icon: Icons.refresh,
              label: "Refetch Wallpapers",
              subLabel:
                  "Checks for all the present wallpapers and downloads new wallpapers if any are missing or new ones are available",
            ),
            XIconLabelButton(
              icon: Icons.delete,
              label: "Delete Wallpapers",
              subLabel: "Choose one or more wallpapers to delete from storage",
            ),
            XIconLabelButton(
              icon: Icons.dark_mode,
              label: "Theme",
              subLabel: "Toggle Light Mode or Dark Mode",
            ),
            XIconLabelButton(
              icon: Icons.access_time_sharp,
              label: "Time before each check",
              subLabel:
                  "The time to wait after a check to check again for the required time for changing the wallpaper",
            ),
            XIconLabelButton(
              icon: Icons.book,
              label: "App Licenses",
              subLabel: "The licenses related to the App",
            ),
            XIconLabelButton(
              icon: Icons.person,
              label: "About Author",
              subLabel: "More about Ayush Gupta",
            ),
            XIconLabelButton(
              icon: Icons.code,
              label: "Source Code",
              subLabel:
                  "The open source code for this application written in flutter",
            )
          ],
        ),
      ),
      drawer: const Xdrawer(),
    );
  }
}
