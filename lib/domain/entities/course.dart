class Course {
  String title, owner, coverUrl;
  List<String> tags;
  bool onlyWeb;
  double rating;
  int reviewsCount;

  Course({
    required this.title,
    required this.owner,
    required this.coverUrl,
    required this.rating,
    required this.reviewsCount,
    this.onlyWeb = true,
    this.tags = const [],
  });
}
