import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/widgets/widgets.dart';
import 'package:pocket_news/services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return Scaffold(
      appBar: const CustomHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsList(news: newsService.headlines, title: 'News Trending'),
            NewsList(news: newsService.headlines, title: 'Most Relevant'),
            
            Container(
              color: Colors.indigo,
              height: 550,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Text('Texto $index')),
            )
          ],
        ),
      ),
    );
  }
}
