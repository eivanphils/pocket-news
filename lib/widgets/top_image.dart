import 'package:flutter/material.dart';

import 'package:pocket_news/models/article_model.dart';

class TopImage extends StatelessWidget {
  final Article newInfo;
  final double? height;

  const TopImage({
    super.key,
    required this.newInfo, this.height = 122,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FadeInImage(
        placeholder: const AssetImage('assets/giphy.gif'),
        image: newInfo.urlToImage != null
            ? NetworkImage(newInfo.urlToImage!)
            : const AssetImage('assets/no-image.png') as ImageProvider<Object>,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
