import 'package:udemy_clone/domain/entities/section.dart';

import '../../domain/entities/lecture.dart';

List<Section> sections = [
  Section(
    title: "Pengenalan Flutter",
    lectures: [
      Lecture(
          title: "Pengenalan Flutter",
          videoLink: "https://youtu.be/epRWFH47xCI"),
      Lecture(
          title: "Dart Basic, Extends, Mixin",
          videoLink: "https://youtu.be/DUo01ekCn8Y"),
    ],
  ),
  Section(
    title: "Pengenalan Widget",
    lectures: [
      Lecture(
          title: "Stateless vs Stateful",
          videoLink: "https://youtu.be/8VQraXro3qc"),
      Lecture(title: "Widget Dasar", videoLink: "https://youtu.be/qxx1KX43R-4"),
      Lecture(title: "Text Widget", videoLink: "https://youtu.be/-RrnIax4Br8"),
      Lecture(
          title: "Visible dan Invisible Widget",
          videoLink: "https://youtu.be/g-cxn7L4bPc"),
    ],
  ),
  Section(
    title: "Widget List",
    lectures: [
      Lecture(title: "List View", videoLink: "https://youtu.be/DZbYC7AnoVc"),
      Lecture(title: "List Tile", videoLink: "https://youtu.be/tq3DgQqySuM"),
    ],
  ),
];
