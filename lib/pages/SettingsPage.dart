import 'package:advalls/Widgets/XDrawer.dart';
import 'package:advalls/Widgets/XIconLabelButton.dart';
import 'package:advalls/Widgets/XLabel.dart';
import 'package:advalls/Widgets/XToggle.dart';
import 'package:advalls/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const XLabel(text: "Settings"),
            const XIconLabelButton(
              icon: Icons.refresh,
              label: "Refetch Wallpapers",
              subLabel:
                  "Checks for all the present wallpapers and downloads new wallpapers if any are missing or new ones are available",
            ),
            const XIconLabelButton(
              icon: Icons.delete,
              label: "Delete Wallpapers",
              subLabel: "Choose one or more wallpapers to delete from storage",
            ),
            XToggle(
              label: "Theme",
              sublabel: "Toggle Light Mode or Dark Mode",
              doIfOn: (value) => {
                Provider.of<Themeprovider>(context, listen: false)
                    .toggleThemes()
              },
              value:
                  Provider.of<Themeprovider>(context, listen: false).isDarkMode,
            ),
            const XIconLabelButton(
              icon: Icons.access_time_sharp,
              label: "Time before each check",
              subLabel:
                  "The time to wait after a check to check again for the required time for changing the wallpaper",
            ),
            const XIconLabelButton(
              icon: Icons.book,
              label: "App Licenses",
              subLabel: "The licenses related to the App",
            ),
            const XIconLabelButton(
              icon: Icons.person,
              label: "About Author",
              subLabel: "More about Ayush Gupta",
            ),
            const XIconLabelButton(
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
