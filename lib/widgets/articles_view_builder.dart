import 'package:flutter/material.dart';

import '../api/news_services.dart';
import '../data_models/article_response.dart';
import 'articles_list.dart';

class ArticlesViewBuilder extends StatefulWidget {
  final String category;

  const ArticlesViewBuilder({super.key, required this.category});

  @override
  State<ArticlesViewBuilder> createState() => _ArticlesViewBuilderState();
}

class _ArticlesViewBuilderState extends State<ArticlesViewBuilder> {
    late Future<ArticleResponse> future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(query: widget.category).getArticles();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<ArticleResponse>(
    future: future,
    builder: (ctx, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()),
        );
      } else if (snapshot.hasError) {
        return SliverFillRemaining(
          child: Center(child: Text(snapshot.error.toString())),
        );
      } else {
        return ArticlesList(articles: snapshot.data?.articles);
      }
    },
  );
}