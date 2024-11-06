import 'package:advalls/pages/BrowseWallpapersPage.dart';
import 'package:advalls/pages/Homepage.dart';
import 'package:advalls/pages/SettingsPage.dart';
import 'package:advalls/themes/ThemeData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: lightmode,
      title: "AdValls",
      initialRoute: "/homepage",
      routes: {
        '/homepage': (context) => Homepage(),
        '/settings': (context) => SettingsPage(),
        '/browse': (context) => BrowseWallpapersPage(),
      },
    );
  }
}
