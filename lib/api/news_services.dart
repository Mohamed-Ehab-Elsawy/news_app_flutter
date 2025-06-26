import 'dart:async';

import 'package:dio/dio.dart';

import '../data_models/article_response.dart';

class NewsServices {
  final _dio = Dio();
  final String _baseUrl = "https://newsapi.org/v2/";
  final String _apiKey = "7f8c51fa7cc6427ab21080b4757dd297";
  final String query;

  NewsServices({required this.query});

  Future<ArticleResponse> getArticles() async {
    try {
      Response response = await _dio.get(
        "$_baseUrl/everything",
        queryParameters: {"q": query, "apiKey": _apiKey},
      );
      return ArticleResponse.fromJson(response.data);
    } catch (e) {
      // TODO
    }
    return ArticleResponse();
  }
}