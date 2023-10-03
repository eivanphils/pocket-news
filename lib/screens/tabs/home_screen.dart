import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context, listen: false);

    print('newsService $newsService');
    return const Scaffold(
      body: Center(
        child: Text('Tab1Screen'),
      ),
    );
  }
}
