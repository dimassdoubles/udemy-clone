import 'package:flutter/material.dart';
import 'package:udemy_clone/presentation/widgets/see_all_button.dart';

import '../../share/dummies/courses.dart';
import 'top_courses_item.dart';

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
          HalfCourseItem(
            course: courses[2],
          ),
          HalfCourseItem(
            course: courses[1],
          ),
          HalfCourseItem(
            course: courses[0],
          ),
          const SeeAllButton(),
        ],
      ),
    );
  }
}
