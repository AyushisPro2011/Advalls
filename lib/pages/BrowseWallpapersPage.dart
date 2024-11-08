import 'package:advalls/Widgets/XDrawer.dart';
import 'package:advalls/Widgets/XLabel.dart';
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
                color: colors.primary,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
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
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                XBrowseActionButton(
                  context,
                  Icons.add,
                  "Add Wallpaper",
                  Colors.green,
                ),
                XBrowseActionButton(
                  context,
                  Icons.delete_outline,
                  "Delete Wallpaper",
                  Colors.red,
                ),
              ],
            ),
          ),
          const XLabel(text: "Available Wallpapers"),
          // Expanded to allow GridView to take up remaining space
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(5.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 15, // Number of wallpaper items
              itemBuilder: (context, index) {
                return WallpaperView(context);
              },
            ),
          ),
        ],
      ),
      drawer: const Xdrawer(),
    );
  }

  // WallpaperView method with adaptive container size
  Widget WallpaperView(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: colors.outline),
      ),
      child: Image.asset(
        "lib/assets/WallpaperTest.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  // XBrowseActionButton method with flexible design
  Expanded XBrowseActionButton(
    BuildContext context,
    IconData icon,
    String text,
    Color iconColor,
  ) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2.5),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 30.0,
            ),
            const SizedBox(width: 5.0),
            Text(
              text,
              style: TextStyle(
                color: colors.onPrimary,
                fontSize: 15.0,
                shadows: [
                  Shadow(
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    color: colors.outline,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
