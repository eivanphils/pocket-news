import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:pocket_news/models/article_model.dart';
import 'package:pocket_news/widgets/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routeName = 'new-detail';

  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newInfo = ModalRoute.of(context)!.settings.arguments as Article;

    return Scaffold(
      appBar: const CustomHeader(
        title: 'News Detail',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              newInfo.title,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              newInfo.source.name,
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              newInfo.formatPublishedAt,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 25,
            ),
            TopImage(
              newInfo: newInfo,
              height: 190,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(newInfo.description.toString()),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: newInfo.url,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = (() => _launchScan(context, newInfo.url)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchScan(BuildContext context, String url) async {
  if (!await launchUrlString(
    url,
    mode: LaunchMode.inAppWebView,
  )) {
    throw Exception('Could not launch $url');
  }
}
