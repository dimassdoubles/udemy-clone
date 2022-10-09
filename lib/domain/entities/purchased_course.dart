class PurchasedCourse {
  final String _id, _courseId;
  // progress contain index (index section, index lecture)
  final List<List<int>> _progress;
  final List<int> _lastPlayed;

  PurchasedCourse({
    required String id,
    required String courseId,
    List<List<int>> progress = const [],
    List<int> lastPlayed = const [],
  })  : _id = id,
        _progress = progress,
        _lastPlayed = lastPlayed,
        _courseId = courseId;

  String get courseId {
    return _courseId;
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
