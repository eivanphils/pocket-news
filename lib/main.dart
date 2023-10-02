import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/providers/providers.dart';
import 'package:pocket_news/router/app_routes.dart';
import 'package:pocket_news/theme/app_theme.dart';

void main() => runApp(MultiProvider(providers: [
  ChangeNotifierProvider(create: (_) => NavigationProvider())
],
child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket News',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.darkTheme,
    );
  }
}
