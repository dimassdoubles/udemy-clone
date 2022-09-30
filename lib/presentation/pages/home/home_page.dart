import 'package:flutter/material.dart';
import 'package:udemy_clone/core/dummies/courses.dart';
import '../../../core/constants/text_styles.dart';
import '../../widgets/home/category_item.dart';
import '../../widgets/home/featured_item.dart';
import '../../widgets/home/see_all_button.dart';
import '../../widgets/home/top_courses_item.dart';
import '../../widgets/home/udemy_bussiness.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            'assets/images/home/top.png',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Learning that fits',
            style: loginTitle.copyWith(
              fontSize: 36,
              fontWeight: semiBold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Skills for your present (and future)',
            style: loginBody,
          ),
        ),
        const SizedBox(
          height: 24,
        ),

        // Featured Section
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Featured',
            style: loginBody.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const FeaturedList(),
        const SizedBox(
          height: 48,
        ),

        // Category Section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Categories',
                style: loginBody.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: seeAllText.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const CategoryList(),
        const SizedBox(
          height: 48,
        ),

        // Section Top Course
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top courses in',
                style: loginBody.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Design',
                style: topCourseCategoryText.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const TopCourseList(),
        const SizedBox(
          height: 48,
        ),

        // Top Companies Section
        const UdemyBussiness(),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}

class TopCourseList extends StatelessWidget {
  const TopCourseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TopCoursesItem(
            course: courses[2],
          ),
          TopCoursesItem(
            course: courses[1],
          ),
          TopCoursesItem(
            course: courses[0],
          ),
          const SeeAllButton(),
        ],
      ),
    );
  }
}

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

class FeaturedList extends StatelessWidget {
  const FeaturedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedItem(
            course: courses[0],
          ),
          FeaturedItem(
            course: courses[1],
          ),
          const SeeAllButton(),
        ],
      ),
    );
  }
}
