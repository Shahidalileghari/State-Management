import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {

  var _theme=ThemeMode.light;

  ThemeMode get themeMode=>_theme;

  void setTheme(themeMode)
  {
    _theme=themeMode;
    notifyListeners();
  }

}