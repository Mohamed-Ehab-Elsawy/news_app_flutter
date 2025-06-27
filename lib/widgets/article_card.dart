import 'package:flutter/material.dart';

import '../data_models/article_response.dart';
import '../screens/article_webview.dart';
import 'article_image.dart';

class ArticleCard extends StatelessWidget {
  final Article? article;

  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) =>
      article != null
          ? InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleWebView(article: article!),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ArticleImage(imageUrl: article!.urlToImage),
                SizedBox(height: 8),
                Text(
                  article!.title ?? "No Title",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                article!.description != null
                    ? Text(
                      article!.description!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                    : Container(),
                SizedBox(height: 20),
              ],
            ),
          )
          : Container();
}