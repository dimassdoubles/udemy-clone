import 'package:flutter/material.dart';
import '../pages/course_detail_page.dart';
import 'rating_stars.dart';
import '../../domain/entities/course.dart';

import '../../share/styles/themes.dart';
import 'best_seller_label.dart';

class FullCourseItem extends StatelessWidget {
  final Course course;
  const FullCourseItem({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetailPage(course: course),
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 2 / 3 - 32,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(course.coverUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  course.title,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: bold,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  course.instructor,
                  maxLines: 1,
                  style: TextStyle(color: darkGray),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '${course.rating}',
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    RatingStars(rating: course.rating),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '(${course.reviewsCount})',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: darkGray),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                course.isOnlyWeb
                    ? Text(
                        'Web Exclusive',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: bold),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 8,
                ),
                const BestSellerLabel(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
