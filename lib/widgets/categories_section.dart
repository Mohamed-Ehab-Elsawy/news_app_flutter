import 'package:flutter/material.dart';

import '../data_models/news_category.dart';
import 'category_card.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) =>
      SizedBox(
        height: 100,
        child: ListView.builder(itemBuilder: (context, index) =>
            CategoryCard(category: NewsCategory.categories[index]),
          itemCount: NewsCategory.categories.length,
          scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics()
        ),
      );
}