import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'News',
        style: TextStyle(
          color: Color(0xFF028AC8),
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Cloud',
        style: TextStyle(
          color: Color(0xFF013773),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}