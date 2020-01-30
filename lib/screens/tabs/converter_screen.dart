import 'package:conver_rate/providers/location_provider.dart';
import 'package:conver_rate/widgets/ConverterCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConverterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final model = Provider.of<LocationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Converter"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          ConverterCard(
            flag: model.currentLocation.flag,
            alphaCode: model.currentLocation.alpha2Code,
            currencyName: model.currentLocation.currencies[0].name,
            controller: controller1,
            symbol: model.currentLocation.currencies[0].symbol,
            placeholder: "Amount to convert",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0, // has the effect of softening the shadow
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.swap_vert,
                  size: 32,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ConverterCard(
            flag: model.currentLocation.flag,
            alphaCode: model.currentLocation.alpha2Code,
            currencyName: model.currentLocation.currencies[0].name,
            controller: controller1,
            symbol: model.currentLocation.currencies[0].symbol,
            placeholder: "Amount to convert",
          ),
        ],
      ),
    );
  }
}
