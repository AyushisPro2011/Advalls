import 'package:advalls/Widgets/XDrawer.dart';
import 'package:advalls/Widgets/XDropDown.dart';
import 'package:advalls/Widgets/XIconLabelButton.dart';
import 'package:advalls/Widgets/XLabel.dart';
import 'package:advalls/Widgets/XToggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
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
              "AdValls",
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
            const XLabel(text: "Current Wallpaper"),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: colors.outline)),
                height: 300,
                width: 170,
                child: Image.asset(
                  fit: BoxFit.cover,
                  "lib/assets/WallpaperTest.jpg",
                ),
              ),
            ),
            const XLabel(text: "Options"),
            XIconLabelButton(
                icon: Icons.swap_horizontal_circle_sharp,
                label: "Change wallpaper",
                subLabel: "Swap Current Wallpaper with a random new wallpaper",
                onclick: () async {
                  print("Wallpaper Change");
                }),
            const XDropDown(
                label: "Schedule Change",
                sublabel: "Select How frequently your wallpaper should change",
                list: ["1 Day", "3 days", "5 Days", "12 Hours", " 6 Hours"]),
            const XIconLabelButton(
              icon: Icons.add,
              label: "Add Wallpapers!",
              subLabel: "Add wallpapers to the collection from your gallery",
            ),
            XToggle(
                label: "Toggle App Functionality",
                sublabel:
                    "Turn the wallpaper changing and all processes related to it on or off",
                doIfOn: (value) => print(value.toString()),
                value: true)
          ],
        ),
      ),
      drawer: const Xdrawer(),
    );
  }
}
