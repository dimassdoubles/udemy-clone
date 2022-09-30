import 'package:flutter/material.dart';
import 'package:udemy_clone/core/constants/routes.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_styles.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  const CategoryItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: secondaryColor),
          foregroundColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              100,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
          child: Text(
            title,
            style: categoryText.copyWith(
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
