import 'package:advalls/pages/BrowseWallpapersPage.dart';
import 'package:advalls/pages/Homepage.dart';
import 'package:advalls/pages/SettingsPage.dart';
import 'package:advalls/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

//
//
//
//
//
//
//
//
//The actual Background Task to perform
void callbackDispatcher() {
  Workmanager().executeTask((task, inputdata) async {
    print("Background Task Chal Gaya!!!!!!!!!!!!!!!!!!!!!!!!!11");
    return Future.value(true);
  });
}

//
//
//
//
//
//
//
//the initializeBackgroundProcess
Future<void> initialiseBackgroundProcess() async {
  await Workmanager().initialize(callbackDispatcher, isInDebugMode: false);
  await Workmanager().registerPeriodicTask(
      "AdvallsBackgroundService", "Wallpaper Changer",
      initialDelay: const Duration(seconds: 5),
      frequency: const Duration(minutes: 15));
}

//
//
//
//
//
//
//
//
//The main entryPoint
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialiseBackgroundProcess();
  runApp(ChangeNotifierProvider(
    create: (context) => Themeprovider(),
    child: const App(),
  ));
}

//
//
//
//
// the Material App
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: Provider.of<Themeprovider>(context).themeData,
      title: "AdValls",
      initialRoute: "/homepage",
      routes: {
        '/homepage': (context) => Homepage(),
        '/settings': (context) => const SettingsPage(),
        '/browse': (context) => const BrowseWallpapersPage(),
      },
    );
  }
}
