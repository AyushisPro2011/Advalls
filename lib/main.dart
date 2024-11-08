import 'package:advalls/pages/BrowseWallpapersPage.dart';
import 'package:advalls/pages/Homepage.dart';
import 'package:advalls/pages/SettingsPage.dart';
import 'package:advalls/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print("Background Task has been Ran");
    return Future.value(true);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

  Workmanager().registerPeriodicTask("fiveMinuteTask", "simplePeriodicTask",
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(seconds: 5));

  runApp(ChangeNotifierProvider(
    create: (context) => Themeprovider(),
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: Provider.of<Themeprovider>(context).themeData,
      title: "AdValls",
      initialRoute: "/homepage",
      routes: {
        '/homepage': (context) => const Homepage(),
        '/settings': (context) => const SettingsPage(),
        '/browse': (context) => const BrowseWallpapersPage(),
      },
    );
  }
}
