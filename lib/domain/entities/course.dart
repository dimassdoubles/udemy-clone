import 'package:udemy_clone/domain/entities/section.dart';

class Course {
  final String _title, _instructor, _coverUrl, _description, _courseId;
  final int _price, _reviewsCount, _lecturesCount;
  final List<String> _tags, _whatWillLearn;
  final bool _isOnlyWeb;
  final double _rating;
  final List<Section> _curiculums;

  Course({
    required String description,
    required String courseId,
    required String title,
    required String instructor,
    required String coverUrl,
    required double rating,
    required int reviewsCount,
    required int lecturesCount,
    required int price,
    required List<String> whatWillLearn,
    List<String> tags = const [],
    required List<Section> curiculums,
    bool isOnlyWeb = true,
  })  : _description = description,
        _price = price,
        _whatWillLearn = whatWillLearn,
        _courseId = courseId,
        _title = title,
        _instructor = instructor,
        _coverUrl = coverUrl,
        _rating = rating,
        _reviewsCount = reviewsCount,
        _isOnlyWeb = isOnlyWeb,
        _tags = tags,
        _curiculums = curiculums,
        _lecturesCount = lecturesCount;

  String get courseId {
    return _courseId;
  }

  List<String> get whatWillLearn {
    return _whatWillLearn;
  }

  int get price {
    return _price;
  }

  String get courseId {
    return _courseId;
  }

  String get description {
    return _description;
  }

  int get lecturesCount {
    return _lecturesCount;
  }

  List<Section> get curiculums {
    return _curiculums;
  }

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
