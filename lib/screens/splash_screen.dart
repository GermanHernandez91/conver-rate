import 'package:conver_rate/providers/device_provider.dart';
import 'package:conver_rate/screens/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _setTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String theme = preferences.getString("currentTheme");
    Provider.of<DeviceProvider>(context, listen: false).setCurrentMode(theme);

    Navigator.pushReplacementNamed(context, TabScreen.routeName);
  }

  @override
  void initState() {
    super.initState();
    _setTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
