import 'package:get_it/get_it.dart';
import 'domain/usecases/select_course_by_id.dart';
import 'share/dummies/courses.dart';
import 'presentation/cubits/lecture_selected_video_cubit.dart';
import 'presentation/cubits/lecture_selected_index_cubit.dart';
import 'presentation/cubits/page_cubit.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton<PageCubit>(PageCubit());
  getIt.registerSingleton<LectureSelectedVideoCubit>(
    LectureSelectedVideoCubit(),
  );

  getIt.registerSingleton<LectureSelectedIndexCubit>(
    LectureSelectedIndexCubit(),
  );

  getIt.registerLazySingleton(
    () => SelectCourseById(
      courses: [...featuredCourses, ...programmingCourses],
    ),
  );
}
