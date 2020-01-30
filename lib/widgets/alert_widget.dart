import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final String title;
  final String message;

  AlertWidget({this.title, this.message});

  _buildAlertByPlatform(BuildContext context) {
    if (Platform.isIOS) {
      return _buildIOSAlert(context);
    } else {
      return _buildAndroidAlert(context);
    }
  }

  _buildAndroidAlert(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text('Ok'),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }

  _buildIOSAlert(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("Dismiss"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAlertByPlatform(context);
  }
}
