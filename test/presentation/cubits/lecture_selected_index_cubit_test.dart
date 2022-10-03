import 'package:bloc_test/bloc_test.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_index_cubit.dart';

void main() {
  LectureSelectedIndexCubit cubit = LectureSelectedIndexCubit();

  blocTest(
    'should emit [1,2] when setSelectedIndex(sectionIndex: 1, lectureIndex: 2)',
    build: () => cubit,
    act: (bloc) => bloc.setSelectedIndex(sectionIndex: 1, lectureIndex: 2),
    expect: () => [
      [1, 2],
    ],
  );
}
