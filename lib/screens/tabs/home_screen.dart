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
            const SizedBox(height: 30,),
            NewsList(news: newsService.headlines, title: 'News Trending'),
            const SizedBox(height: 30,),
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
  
  @override
  bool get wantKeepAlive => true;
}
