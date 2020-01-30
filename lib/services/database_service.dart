import 'package:conver_rate/models/location.dart';
import 'package:http/http.dart' as http;

class DatabaseService {
  static Future<Location> getCurrentLocation(String alphaCode) async {
    final url = "https://restcountries.eu/rest/v2/alpha/$alphaCode";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final location = locationFromJson(response.body);
      return location;
    } else {
      throw Exception("Failed fetching current location");
    }
  }
}
