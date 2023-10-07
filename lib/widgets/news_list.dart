import 'package:flutter/material.dart';

import 'package:pocket_news/models/article_model.dart';

class NewsList extends StatelessWidget {
  final List<Article> news;
  final String title;
  const NewsList({super.key, required this.news, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ))),
        SizedBox(
            height: 350,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return _Card(newInfo: news[index], index: index);
                })),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  final Article newInfo;
  final int index;
  const _Card({super.key, required this.newInfo, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 260,
          height: 253,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TopImage(newInfo: newInfo),
              const SizedBox(height: 20,),
              if(newInfo.author != null)
                _Author(author: newInfo.author.toString()),
                const SizedBox(height: 5,),
              _Title(newInfo: newInfo),
              const SizedBox(height: 5,),
              _BottomInfo(newInfo: newInfo)

              // TODO: aplicar estilos a los textos
            ],
          ),
        ),
      ),
    );
  }
}

class _TopImage extends StatelessWidget {
  const _TopImage({
    super.key,
    required this.newInfo,
  });

  final Article newInfo;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FadeInImage(
        placeholder: const AssetImage('assets/giphy.gif'),
        image: newInfo.urlToImage != null
            ? NetworkImage(newInfo.urlToImage!)
            : const AssetImage('assets/no-image.png') as ImageProvider<Object>,
        height: 122,
        width: double.infinity,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}

class _Author extends StatelessWidget {
  final String author;
  const _Author({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Text(
      author,
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: false,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    super.key,
    required this.newInfo,
  });

  final Article newInfo;

  @override
  Widget build(BuildContext context) {
    return Text(
      newInfo.title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      softWrap: false,
    );
  }
}

class _BottomInfo extends StatelessWidget {
  const _BottomInfo({
    super.key,
    required this.newInfo,
  });

  final Article newInfo;

  @override
  Widget build(BuildContext context) {
    return Text('${newInfo.publishedAt.toString()} - ${newInfo.source.name} ');
  }
}
