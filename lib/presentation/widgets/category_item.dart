import 'package:flutter/material.dart';
import '../../share/routes.dart';

import '../../../share/constants/colors.dart';
import '../../../share/constants/text_styles.dart';
import '../../share/styles/themes.dart';

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
        onPressed: () {
          Navigator.pushNamed(context, courseListPage);
        },
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
