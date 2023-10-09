import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/widgets/widgets.dart';
import 'package:pocket_news/services/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final newsService = Provider.of<NewsService>(context);

    return Scaffold(
      appBar: const CustomHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsList(news: newsService.headlines, title: 'News Trending'),
            const SizedBox(height: 20,),
            NewsList(news: newsService.randomNews, title: 'Everything'),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}
