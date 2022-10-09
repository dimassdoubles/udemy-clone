import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:udemy_clone/domain/entities/course.dart';
import 'package:udemy_clone/domain/entities/purchased_course.dart';
import 'package:udemy_clone/domain/usecases/select_course_by_id.dart';
import 'package:udemy_clone/injections.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_index_cubit.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_video_cubit.dart';
import 'package:udemy_clone/presentation/pages/player_page.dart';
import 'package:udemy_clone/share/dummies/purchased_courses.dart';
import 'package:udemy_clone/share/styles/themes.dart';

class LearningPage extends StatelessWidget {
  LearningPage({super.key});

  final courseSelector = getIt<SelectCourseById>();
  final selectedVideo = getIt<LectureSelectedVideoCubit>();
  final selectedIndexVideo = getIt<LectureSelectedIndexCubit>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: purchasedCourses.length,
      itemBuilder: (context, index) {
        PurchasedCourse purchasedCourse = purchasedCourses[index];
        Course course = courseSelector(purchasedCourse.courseId);

        return ListTile(
          contentPadding: const EdgeInsets.all(16),
          onTap: () {
            selectedIndexVideo.setSelectedIndex(
              sectionIndex: purchasedCourse.lastPlayed[0],
              lectureIndex: purchasedCourse.lastPlayed[1],
            );
            selectedVideo.setVideo(course
                .curiculums[purchasedCourse.lastPlayed[0]]
                .lectures[purchasedCourse.lastPlayed[1]]
                .videoLink);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PlayerPage(purchasedCourse: purchasedCourse),
              ),
            );
          },
          leading: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                course.coverUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            course.title,
            maxLines: 1,
            style: TextStyle(fontWeight: bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.instructor,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: darkGray),
              ),
              const SizedBox(
                height: 8,
              ),
              LinearPercentIndicator(
                lineHeight: 4,
                barRadius: const Radius.circular(25),
                progressColor: blue.withOpacity(0.5),
                backgroundColor: darkGray.withOpacity(0.1),
                percent: 0.5,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        );
      },
    );
  }
}
