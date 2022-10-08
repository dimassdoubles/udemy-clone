class Lecture {
  String _title, _videoLink;
  Lecture({required String title, required String videoLink})
      : _title = title,
        _videoLink = videoLink;

  String get title {
    return _title;
  }

  String get videoLink {
    return _videoLink;
  }
}
