import 'package:flutter/material.dart';
import 'package:pocket_news/models/category_model.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/extensions/string_extension.dart';
import 'package:pocket_news/widgets/widgets.dart';
import 'package:pocket_news/services/news_service.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);
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
          const SizedBox(
            height: 10,
          ),
          NewsList(
              news: newsService.newsByCategory,
              title: newsService.selectedCategory),
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
            padding: const EdgeInsets.only(left: 12),
            child: _CategoryButton(category: category),
          );
        });
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);
    return ChoiceChip(
      label: Row(
        children: [
          Text(category.name.capitalize()),
          const SizedBox(
            width: 10,
          ),
          Icon(
            category.icon,
            size: 17,
          )
        ],
      ),
      selected: newsService.selectedCategory == category.name,
      onSelected: (bool selected) {
        newsService.selectedCategory = category.name;
        newsService.getNewsByCategory(category: category.name);
      },
    );
  }
}
