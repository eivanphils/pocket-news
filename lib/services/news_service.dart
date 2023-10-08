import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:pocket_news/models/models.dart';

class NewsService extends ChangeNotifier {
  final String _apiKey = '79a9a912c9bf4187bb408209386be3dd';
  final String _baseUrl = 'newsapi.org';
  bool isDarMode = true;
  bool isLoading = false;

  List<Article> headlines = [];

  NewsService() {
    isLoading = true;
    notifyListeners();
    getTopHeadLines();
  }

  void getTopHeadLines({String? query}) async {
    print('Cargando headlines....');

    final jsonData = await _getJsonData(endpoint: 'v2/top-headlines');
    final apiResponse = newsResponseFromJson(jsonData);

    headlines.addAll(apiResponse.articles);

    isLoading = false;
    notifyListeners();
  }

  Future<String> _getJsonData({String? query, required endpoint}) async {
    final url = Uri.https(
        _baseUrl, endpoint, {'country': 'us', 'apiKey': _apiKey, 'q': query});

    final response = await http.get(url);

    return response.body;
  }

  void changeThemeMode() {
    isDarMode = !isDarMode;
    notifyListeners();
  }
}