import 'package:flutter/material.dart';

import 'package:pocket_news/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      TabsScreen.routeName: (BuildContext context) => const TabsScreen()
    };

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const TabsScreen()));
  }
}
