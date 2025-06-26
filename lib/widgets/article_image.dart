import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class ArticleImage extends StatelessWidget {
  final String? imageUrl;

  const ArticleImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child:
    imageUrl != null
        ? CachedNetworkImage(
      imageUrl: imageUrl!,
      fit: BoxFit.fill,
      height: 200,
      width: double.infinity,
      progressIndicatorBuilder:
          (ctx, url, progress) =>
          Center(child: CircularProgressIndicator()),
      errorWidget:
          (ctx, url, error) => Image.asset(
        'assets/images/no_image_available.png',
        fit: BoxFit.fill,
        height: 200,
        width: double.infinity,
      ),
    )
        : Image.asset(
      'assets/images/no_image_available.png',
      fit: BoxFit.fill,
      height: 200,
      width: double.infinity,
    ),
  );
}