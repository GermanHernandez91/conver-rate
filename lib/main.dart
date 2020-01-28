import 'package:conver_rate/providers/device_provider.dart';
import 'package:conver_rate/screens/splash_screen.dart';
import 'package:conver_rate/screens/tab_screen.dart';
import 'package:conver_rate/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DeviceProvider()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<DeviceProvider>(context);

    return MaterialApp(
      title: 'Convert Rate',
      debugShowCheckedModeBanner: false,
      theme: model.currentTheme == ThemeType.light
          ? Themes.lightTheme
          : Themes.darkTheme,
      darkTheme: Themes.darkTheme,
      home: SplashScreen(),
      routes: {
        TabScreen.routeName: (_) => TabScreen(),
      },
    );
  }
}
