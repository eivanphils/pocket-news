import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentScreen = 0;
  final PageController _pageController = PageController();

  int get currentScreen => _currentScreen;

  set currentScreen(int index) {
    _currentScreen = index;
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);

    notifyListeners();
  }

  PageController get pageController => _pageController;
}
