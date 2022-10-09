import 'package:flutter/material.dart';
import 'see_all_button.dart';

import '../../share/dummies/courses.dart';
import 'full_course_item.dart';

class FullCourseList extends StatelessWidget {
  const FullCourseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...featuredCourses.map((e) => FullCourseItem(course: e)).toList(),
          const SeeAllButton(),
        ],
      ),
    );
  }
}
