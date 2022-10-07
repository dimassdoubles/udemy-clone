import 'package:flutter/material.dart';
import 'package:udemy_clone/share/dummies/courses.dart';
import 'package:udemy_clone/share/styles/themes.dart';
import '../../../share/constants/text_styles.dart';
import '../../widgets/category_item.dart';
import '../../widgets/featured_item.dart';
import '../../widgets/see_all_button.dart';
import '../../widgets/top_courses_item.dart';
import '../../widgets/udemy_bussiness.dart';

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageOnTop(),
          const SizedBox(
            height: 16,
          ),
          const IntroText(),
          // Featured Section
          const Section1(
            title: 'Featured',
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
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  final String title;
  const Section1({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title),
        const SizedBox(
          height: 8,
        ),
        const CourseList1(),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}

class IntroText extends StatelessWidget {
  const IntroText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learning that fits',
            style: textStyle1,
          ),
          const Text(
            'Skills for your present (and future)',
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class ImageOnTop extends StatelessWidget {
  const ImageOnTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Image.asset(
        'assets/images/home/top.png',
      ),
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

class CourseList1 extends StatelessWidget {
  const CourseList1({
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
