import 'lecture.dart';

class Section {
  final String _title;
  final List<Lecture> _lectures;
  Section({required String title, required List<Lecture> lectures})
      : _title = title,
        _lectures = lectures;

  String get title {
    return _title;
  }

  List<Lecture> get lectures {
    return _lectures;
  }
}
