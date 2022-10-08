import 'package:flutter/material.dart';
import 'package:udemy_clone/presentation/widgets/see_all_button.dart';

import '../../share/dummies/courses.dart';
import 'featured_item.dart';

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
          FullCourseItem(
            course: courses[0],
          ),
          FullCourseItem(
            course: courses[1],
          ),
          const SeeAllButton(),
        ],
      ),
    );
  }
}
