class CoursePurchased {
  final String _id, _idCourse;
  // progress contain index (index section, index lecture)
  final List<List<int>> _progress;
  final List<int> _lastPlayed;

  CoursePurchased({
    required String id,
    required String idCourse,
    List<List<int>> progress = const [],
    List<int> lastPlayed = const [],
  })  : _id = id,
        _progress = progress,
        _lastPlayed = lastPlayed,
        _idCourse = idCourse;

  String get idCourse {
    return _idCourse;
  }

  String get id {
    return _id;
  }

  List<List<int>> get progress {
    return _progress;
  }

  List<int> get lastPlayed {
    return _lastPlayed;
  }
}
