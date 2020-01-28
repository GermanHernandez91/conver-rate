import 'package:conver_rate/providers/device_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<DeviceProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.brightness_6),
          onPressed: () => model.changeTheme(),
        ),
      ),
    );
  }
}
