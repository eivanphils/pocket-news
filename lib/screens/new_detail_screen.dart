import 'package:flutter/material.dart';

import 'package:pocket_news/models/article_model.dart';
import 'package:pocket_news/widgets/widgets.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routeName = 'new-detail';

  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newInfo = ModalRoute.of(context)!.settings.arguments as Article;

    return const Scaffold(
      appBar: CustomHeader(
        title: 'News Detail',
      ),
      body: Center(
        child: Text('News Detail'),
      ),
    );
  }
}
