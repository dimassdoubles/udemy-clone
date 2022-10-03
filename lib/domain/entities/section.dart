import 'package:udemy_clone/domain/entities/lecture.dart';

class Section {
  String title;
  List<Lecture> lectures;
  Section({required this.title, required this.lectures});
}
