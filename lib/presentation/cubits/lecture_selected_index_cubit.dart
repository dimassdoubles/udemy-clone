import 'package:bloc/bloc.dart';

class LectureSelectedIndexCubit extends Cubit<List<int>> {
  LectureSelectedIndexCubit() : super([0, 0]);

  void setSelectedIndex({
    required int sectionIndex,
    required int lectureIndex,
  }) {
    emit([sectionIndex, lectureIndex]);
  }
}
