import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:pocket_news/models/models.dart';

class NewsService extends ChangeNotifier {
  final String _apiKey = '79a9a912c9bf4187bb408209386be3dd';
  final String _baseUrl = 'newsapi.org';
  bool isLoading = false;

  List<Article> headlines = [];
  List<Article> randomNews = [];
  List<Article> newsByCategory = [];
  List<Category> categories = [
    Category(Icons.work, 'business'),
    Category(Icons.tv, 'entertainment'),
    Category(Icons.dashboard, 'general'),
    Category(Icons.monitor_heart, 'health'),
    Category(Icons.science, 'science'),
    Category(Icons.sports_volleyball, 'sports'),
    Category(Icons.memory, 'technology'),
  ];

  String _selectedCategory = 'business';

  set selectedCategory(category) => _selectedCategory = category;

  String get selectedCategory => _selectedCategory;

  NewsService() {
    isLoading = true;
    notifyListeners();
    getTopHeadLines();
    getRandomNews(query: 'world');
    getNewsByCategory(category: categories[0].name);
  }

  void getTopHeadLines({String? query}) async {
    final jsonData =
        await _getJsonData(endpoint: 'v2/top-headlines', country: 'us');
    final apiResponse = newsResponseFromJson(jsonData);

    headlines.addAll(apiResponse.articles);

    isLoading = false;
    notifyListeners();
  }

  void getNewsByCategory({required String category}) async {
    isLoading = true;
    notifyListeners();
    final jsonData = await _getJsonData(
        endpoint: 'v2/top-headlines', country: 'us', category: category);
    final apiResponse = newsResponseFromJson(jsonData);

    newsByCategory.addAll(apiResponse.articles);

    isLoading = false;
    notifyListeners();
  }

  void getRandomNews({required String query}) async {
    final jsonData =
        await _getJsonData(endpoint: 'v2/everything', query: query);
    final apiResponse = newsResponseFromJson(jsonData);

    randomNews.addAll(apiResponse.articles);

    isLoading = false;
    notifyListeners();
  }

  Future<String> _getJsonData(
      {String? query,
      String? country,
      String? category,
      required endpoint}) async {
    final url = Uri.https(_baseUrl, endpoint, {
      'country': country,
      'apiKey': _apiKey,
      'q': query,
      'category': category
    });

    final response = await http.get(url);

    return response.body;
  }
}
