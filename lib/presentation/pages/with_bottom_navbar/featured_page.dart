import 'package:flutter/material.dart';
import '../../../share/routes.dart';
import '../../../share/styles/themes.dart';
import '../../../share/constants/text_styles.dart';
import '../../widgets/category_list.dart';
import '../../widgets/full_course_list.dart';
import '../../widgets/half_course_list.dart';
import '../../widgets/see_all_button.dart';
import '../../widgets/udemy_bussiness.dart';

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // header image
          ImageOnTop(),
          SizedBox(
            height: 16,
          ),

          // intro text
          IntroText(),

          // featured section
          FeaturedCourseSection(
            title: 'Featured',
          ),

          // category section
          CategorySection(),

          // section top course
          CategoryCourseSection(category: "Programming"),

          // top companies section
          UdemyBussiness(),

          // end off page
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}

class CategoryCourseSection extends StatelessWidget {
  final String category;
  const CategoryCourseSection({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryCourseSectionTitle(category: category),
        const SizedBox(
          height: 8,
        ),
        const HalfCourseList(),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}

class CategoryCourseSectionTitle extends StatelessWidget {
  final String category;
  const CategoryCourseSectionTitle({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, courseListPage);
        },
        child: Wrap(
          children: [
            Text(
              'Featured course in',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              category,
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(color: blue),
            ),
          ],
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Categories',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const CategoryList(),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}

class SectionTitleWithSeeAll extends StatelessWidget {
  final String title;
  const SectionTitleWithSeeAll({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: SeeAllButton(),
        ),
      ],
    );
  }
}

class FeaturedCourseSection extends StatelessWidget {
  final String title;
  const FeaturedCourseSection({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const FullCourseList(),
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
