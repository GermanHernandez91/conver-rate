import 'package:conver_rate/widgets/CurrencyItem.dart';
import 'package:conver_rate/widgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class ConverterCard extends StatelessWidget {
  final String flag;
  final String alphaCode;
  final String currencyName;
  final TextEditingController controller;
  final String symbol;
  final String placeholder;

  ConverterCard({
    @required this.flag,
    @required this.alphaCode,
    @required this.currencyName,
    @required this.controller,
    @required this.symbol,
    @required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8.0, // has the effect of softening the shadow
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 20,
            right: 10,
          ),
          child: Column(
            children: <Widget>[
              CurrencyItem(
                flag: flag,
                alphaCode: alphaCode,
                currencyName: currencyName,
              ),
              TextFieldWidget(
                controller: controller,
                symbol: symbol,
                placeholder: placeholder,
              )
            ],
          ),
        ),
      ),
    );
  }
}
