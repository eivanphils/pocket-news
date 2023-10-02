import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/screens/screens.dart';
import 'package:pocket_news/providers/providers.dart';

class TabsScreen extends StatelessWidget {
  static const routeName = 'home';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Screens(),
      bottomNavigationBar: _BottoNavigation(),
    );
  }
}

class _BottoNavigation extends StatelessWidget {
  const _BottoNavigation();

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return BottomNavigationBar(
      currentIndex: navigationProvider.currentScreen,
      onTap: (int index) => navigationProvider.currentScreen = index,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Explorar'),
      ],
    );
  }
}

class _Screens extends StatelessWidget {
  const _Screens();

  @override
  Widget build(BuildContext context) {
    final nagigationProvider = Provider.of<NavigationProvider>(context);
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: nagigationProvider.pageController,
      children: const [
        HomeScreen(),
        ExplorerScreen(),
      ],
    );
  }
}
