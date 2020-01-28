import 'dart:io';

import 'package:conver_rate/screens/tabs/converter_screen.dart';
import 'package:conver_rate/screens/tabs/rates_screen.dart';
import 'package:conver_rate/screens/tabs/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  static final String routeName = "tab_screen";

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentTabIndex = 0;

  List<Widget> _pages = [
    ConverterScreen(),
    RatesScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentTabIndex],
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.compare_arrows),
        title: Text("Converter"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.monetization_on),
        title: Text("Rates"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        title: Text("Settings"),
      ),
    ];

    if (Platform.isIOS) {
      return CupertinoTabBar(
        backgroundColor: Theme.of(context).primaryColor,
        activeColor: Theme.of(context).accentColor,
        inactiveColor: Colors.blueGrey,
        currentIndex: _currentTabIndex,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: items,
      );
    } else {
      return BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _currentTabIndex,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: items,
      );
    }
  }
}
