import 'package:flutter/material.dart';
import 'package:news_app/data_models/article_response.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  final Article article;

  const ArticleWebView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          article.source?.name ?? "",
          style: const TextStyle(
            color: Color(0xFF028AC8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WebViewWidget(
        controller:
            WebViewController()..loadRequest(
              Uri.parse(article.url ?? "https://www.bbc.com/news"),
            ),
      ),
    );
  }
}