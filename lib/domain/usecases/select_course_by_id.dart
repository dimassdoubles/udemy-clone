import '../entities/course.dart';

class SelectCourseById {
  final List<Course> _courses;
  SelectCourseById({
    required List<Course> courses,
  }) : _courses = courses;

  Course call(String id) {
    for (int i = 0; i < _courses.length; i++) {
      if (_courses[i].id == id) {
        return _courses[i];
      }
    }
    throw Exception("Can't find course");
  }
}
