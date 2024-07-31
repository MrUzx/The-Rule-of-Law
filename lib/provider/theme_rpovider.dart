import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therule_oflaw/core/themes/dark_theme.dart';
import 'package:therule_oflaw/core/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightmode;
  bool type_theme = false;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggletheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
      type_theme = true;
    } else {
      _themeData = lightmode;
      type_theme = false;
    }
    notifyListeners();
  }
}
