import 'package:flutter/cupertino.dart';

class Currency {
  final String code;
  final String name;
  final String symbol;

  Currency({@required this.code, this.name, @required this.symbol});

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      code: json["code"],
      name: json["name"],
      symbol: json["symbol"],
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };
}
