import 'package:conver_rate/models/location.dart';
import 'package:conver_rate/services/database_service.dart';
import 'package:conver_rate/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationProvider with ChangeNotifier {
  Location _currentLocation;

  Location get currentLocation => _currentLocation;

  void setCurrentLocation(Location location) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(Keys.location, location.toJson().toString());
    _currentLocation = location;

    notifyListeners();
  }

  Future<void> saveLocation(String alphaCode) async {
    Location location;

    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      final currentLocation = preferences.getString(Keys.location);

      if (currentLocation != null) {
        location = await DatabaseService.getCurrentLocation(alphaCode);
      } else {
        location = locationFromJson(currentLocation);
      }

      setCurrentLocation(location);
    } catch (err) {
      print(err);
      throw Exception(err.toString());
    }
  }
}
