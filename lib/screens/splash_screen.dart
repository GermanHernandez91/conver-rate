import 'package:conver_rate/providers/device_provider.dart';
import 'package:conver_rate/providers/location_provider.dart';
import 'package:conver_rate/screens/tab_screen.dart';
import 'package:conver_rate/services/location_service.dart';
import 'package:conver_rate/widgets/alert_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _getLocation() async {
    try {
      final alphaCode = await LocationService.getCurrentLocation();
      await Provider.of<LocationProvider>(context, listen: false)
          .saveLocation(alphaCode);
      Navigator.pushReplacementNamed(context, TabScreen.routeName);
    } catch (err) {
      showDialog(
        context: context,
        builder: (context) => AlertWidget(
          title: "Something went wrong",
          message: err.toString(),
        ),
      );
    }
  }

  _setTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String theme = preferences.getString("currentTheme");
    Provider.of<DeviceProvider>(context, listen: false).setCurrentMode(theme);
  }

  @override
  void initState() {
    super.initState();
    _setTheme();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
