import 'package:flutter/material.dart';

import '../widgets/categories_section.dart';
import '../widgets/custom_app_bar_title.dart';
import '../widgets/articles_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const CustomAppBarTitle(),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const SliverToBoxAdapter(child: CategoriesSection()),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const ArticlesViewBuilder(category: 'general'),
        ],
      ),
    ),
  );
}