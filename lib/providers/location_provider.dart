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

    print(preferences.getString(Keys.location));
    print(_currentLocation);

    notifyListeners();
  }

  Future<void> saveLocation(String alphaCode) async {
    try {
      final location = await DatabaseService.getCurrentLocation(alphaCode);
      setCurrentLocation(location);
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
