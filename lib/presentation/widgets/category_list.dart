import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CategoryItem(title: 'Development'),
                    CategoryItem(title: 'IT & Software'),
                    CategoryItem(title: 'Office Productivity'),
                    CategoryItem(title: 'Design'),
                    CategoryItem(title: 'LifeStyle'),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    CategoryItem(title: 'Business'),
                    CategoryItem(title: 'Finance & Accounting'),
                    CategoryItem(title: 'Personal Development'),
                    CategoryItem(title: 'Marketing'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
