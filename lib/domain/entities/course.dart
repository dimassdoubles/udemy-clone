class Course {
  final String _title, _instructor, _coverUrl;
  final List<String> _tags;
  final bool _isOnlyWeb;
  final double _rating;
  final int _reviewsCount;

  Course({
    required String title,
    required String instructor,
    required String coverUrl,
    required double rating,
    required int reviewsCount,
    bool isOnlyWeb = true,
    List<String> tags = const [],
  })  : _title = title,
        _instructor = instructor,
        _coverUrl = coverUrl,
        _rating = rating,
        _reviewsCount = reviewsCount,
        _isOnlyWeb = isOnlyWeb,
        _tags = tags;

  String get title {
    return _title;
  }

  String get instructor {
    return _instructor;
  }

  String get coverUrl {
    return _coverUrl;
  }

  List<String> get tags {
    return _tags;
  }

  bool get isOnlyWeb {
    return _isOnlyWeb;
  }

  double get rating {
    return _rating;
  }

  int get reviewsCount {
    return _reviewsCount;
  }
}
