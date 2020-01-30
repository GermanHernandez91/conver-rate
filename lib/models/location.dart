import 'dart:convert';

import 'package:conver_rate/models/currency.dart';
import 'package:flutter/cupertino.dart';

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());

final baseFlagURL = "http://www.geognos.com/api/en/countries/flag";

class Location {
  final String alpha2Code;
  final List<Currency> currencies;
  final String flag;

  Location({
    @required this.alpha2Code,
    @required this.currencies,
    @required this.flag,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        alpha2Code: json["alpha2Code"],
        currencies: List<Currency>.from(
          json["currencies"].map((x) => Currency.fromJson(x)),
        ),
        flag: "$baseFlagURL/${json["alpha2Code"]}.png");
  }

  Map<String, dynamic> toJson() => {
        "alpha2Code": alpha2Code,
        "currencies": List<dynamic>.from(currencies.map((x) => x.toJson())),
        "flag": flag,
      };
}
