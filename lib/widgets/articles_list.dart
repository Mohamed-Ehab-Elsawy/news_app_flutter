import 'package:flutter/material.dart';
import '../data_models/article_response.dart';
import 'article_card.dart';

class ArticlesList extends StatelessWidget {
  final List<Article>? articles;

  const ArticlesList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) => SliverList(
    delegate: SliverChildBuilderDelegate(
      childCount: articles?.length ?? 0,
          (context, index) => ArticleCard(article: articles?[index]),
    ),
  );
}