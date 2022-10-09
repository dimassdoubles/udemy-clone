import 'package:flutter/material.dart';
import 'see_all_button.dart';

import '../../share/dummies/courses.dart';
import 'half_course_item.dart';

class HalfCourseList extends StatelessWidget {
  const HalfCourseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...programmingCourses.map((e) => HalfCourseItem(course: e)).toList(),
          const SeeAllButton(),
        ],
      ),
    );
  }
}
