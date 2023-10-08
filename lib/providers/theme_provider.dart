import 'package:flutter/material.dart';
import 'package:pocket_news/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = true;
  ThemeData currentTheme;

  ThemeProvider({required bool isDark})
      : currentTheme = isDark ? AppTheme.darkTheme : AppTheme.lightTheme;

  setMode() {
    currentTheme = isDarkMode ? AppTheme.lightTheme : AppTheme.darkTheme;
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
