import 'package:flutter/material.dart';
import 'package:news_app/screens/category_screen.dart';

import '../data_models/news_category.dart';

class CategoryCard extends StatelessWidget {
  final NewsCategory category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SpecificCategoryArticlesScreen(category: category.title),
      ));
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(category.image),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Text(
          category.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}