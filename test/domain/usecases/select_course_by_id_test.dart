import 'package:flutter_test/flutter_test.dart';
import 'package:udemy_clone/domain/entities/course.dart';
import 'package:udemy_clone/domain/usecases/select_course_by_id.dart';
import 'package:udemy_clone/share/dummies/courses.dart';

void main() {
  SelectCourseById usecase = SelectCourseById(courses: featuredCourses);
  Course expectedCourse = featuredCourses[0];
  String courseId = expectedCourse.id;

  test(
    "should return course",
    () {
      final result = usecase(courseId);
      expect(result, expectedCourse);
    },
  );

  test(
    "shouldn't return course",
    () {
      try {
        usecase("$courseId s");
      } catch (error) {
        // ignore: avoid_print
        print("error");
      }
    },
  );
}
