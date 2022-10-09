import 'section.dart';

class Course {
  final String _title, _instructor, _coverUrl, _description, _id;
  final int _price, _reviewsCount, _lecturesCount;
  final List<String> _whatWillLearn;
  final bool _isOnlyWeb;
  final double _rating;
  final List<Section> _curiculums;

  Course({
    required String description,
    required String id,
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
        _id = id,
        _title = title,
        _instructor = instructor,
        _coverUrl = coverUrl,
        _rating = rating,
        _reviewsCount = reviewsCount,
        _isOnlyWeb = isOnlyWeb,
        _curiculums = curiculums,
        _lecturesCount = lecturesCount;

  List<String> get whatWillLearn {
    return _whatWillLearn;
  }

  int get price {
    return _price;
  }

  String get id {
    return _id;
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
