import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String symbol;
  final String placeholder;

  TextFieldWidget({
    @required this.controller,
    @required this.symbol,
    @required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
        suffix: Container(
          padding: const EdgeInsets.all(5.0),
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
          child: Text(symbol, style: Theme.of(context).textTheme.headline),
        ),
      ),
    );
  }
}
