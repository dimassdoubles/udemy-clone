import 'package:bloc/bloc.dart';

class LectureSelectedVideoCubit extends Cubit<String> {
  LectureSelectedVideoCubit() : super("https://www.youtube.com/watch?v=MNQR73Xckkc");

  void setVideo(String videoUrl) {
    emit(videoUrl);
  }
}
