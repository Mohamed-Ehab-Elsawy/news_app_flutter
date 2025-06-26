import 'package:flutter/material.dart';

import '../widgets/articles_view_builder.dart';

class SpecificCategoryArticlesScreen extends StatelessWidget {
  final String category;

  const SpecificCategoryArticlesScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        category,
        style: const TextStyle(
          color: Color(0xFF028AC8),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          ArticlesViewBuilder(category: category),
        ],
      ),
    ),
  );
}