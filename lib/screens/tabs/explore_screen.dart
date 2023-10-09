import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/widgets/widgets.dart';
import 'package:pocket_news/services/news_service.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(
        title: 'Explore News',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: _CategoryList(),
          ),
        ],
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: newsService.categories.length,
        itemBuilder: (context, index) {
          final category = newsService.categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ChoiceChip(
              label: Row(
                children: [
                  Text(category.name),
                  const SizedBox(width: 10,),
                  Icon(category.icon, size: 17,)
                ],
              ),
              selected: newsService.selectedCategory == category.name,
              onSelected: (bool selected) {
                newsService.selectedCategory = category.name;
                newsService.getNewsByCategory(category: category.name);
              },
            ),
          );
        });
  }
}
