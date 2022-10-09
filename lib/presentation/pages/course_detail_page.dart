import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import '../../share/constants/colors.dart';
import '../../domain/entities/course.dart';
import '../../share/constants/text_styles.dart';
import '../../share/styles/themes.dart';
import '../widgets/best_seller_label.dart';
import '../widgets/rating_stars.dart';

class CourseDetailPage extends StatelessWidget {
  final Course _course;
  const CourseDetailPage({required Course course, super.key})
      : _course = course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoursePreview(course: _course),
              // course title
              CourseTitle(course: _course),

              // course description
              CourseDescription(course: _course),

              // best seller label
              const CourseLabel(),

              CourseRating(course: _course),

              // creator
              CourseCreator(course: _course),
              //   height: 16,
              // ),

              // what you'll learn
              CourseWillLearn(course: _course),

              // Curiculum
              CourseCuriculum(course: _course),

              // instructor
              CourseInstructor(course: _course),

              // just display, no logic here
              Footer(course: _course),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SectionTitle('Student Feedback'),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '${_course.rating}',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: bold),
            ),
            const SizedBox(width: 8),
            const Text('course rating'),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            progressColor: progressColor,
                            backgroundColor: backgroundProgressBarColor,
                            percent: 0.61,
                            lineHeight: 15,
                          ),
                        ),
                        const RatingStars(rating: 5),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            progressColor: progressColor,
                            backgroundColor: backgroundProgressBarColor,
                            percent: 0.3,
                            lineHeight: 15,
                          ),
                        ),
                        const RatingStars(rating: 4),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            progressColor: progressColor,
                            backgroundColor: backgroundProgressBarColor,
                            percent: 0.07,
                            lineHeight: 15,
                          ),
                        ),
                        const RatingStars(rating: 3),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            progressColor: progressColor,
                            backgroundColor: backgroundProgressBarColor,
                            percent: 0.01,
                            lineHeight: 15,
                          ),
                        ),
                        const RatingStars(rating: 2),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            progressColor: progressColor,
                            backgroundColor: backgroundProgressBarColor,
                            percent: 0.01,
                            lineHeight: 15,
                          ),
                        ),
                        const RatingStars(rating: 1),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('61 %'),
                  Text('30 %'),
                  Text('7 %'),
                  Text('1 %'),
                  Text('1 %'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),

        // feedback item
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'kirain Sadasivan',
              style: TextStyle(fontWeight: bold),
            ),
            Row(
              children: [
                const RatingStars(rating: 4),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '2 weeks ago',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: darkGray),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'I enjoyed going through this course and doing the exercises. I wish it could be made available even after the Pilot so that one can keep practising the exercises. I would strongly recomende this course',
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Russell Clyde McCauley',
              style: TextStyle(fontWeight: bold),
            ),
            Row(
              children: [
                const RatingStars(rating: 3),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '1 month ago',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: darkGray),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'I can see the value in this course for individuals struggling with the fear of public speaking, and speaking of themselves. However, I felt the presentation focused too little on useful practicing techniques to presenting.',
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class CourseCuriculum extends StatelessWidget {
  const CourseCuriculum({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Curiculum'),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${_course.curiculums.length} sections - ${_course.lecturesCount} lectures',
          style: Theme.of(context).textTheme.caption!.copyWith(color: darkGray),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: _course.curiculums.length,
          itemBuilder: (context, parentIndex) => Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              iconColor: blue,
              tilePadding: EdgeInsets.zero,
              title: Text(
                "Section ${parentIndex + 1} - ${_course.curiculums[parentIndex].title}",
                style: TextStyle(color: darkGray),
              ),
              trailing: const Icon(Icons.add_rounded),
              children: _course.curiculums[parentIndex].lectures
                  .asMap()
                  .entries
                  .map(
                    (e) => ListTile(
                      leading: Text(
                        "${parentIndex + 1}.${e.key + 1}",
                      ),
                      title: Text(
                        e.value.title,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class CourseInstructor extends StatelessWidget {
  const CourseInstructor({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Instructor'),
        const SizedBox(
          height: 8,
        ),
        Text(
          _course.instructor,
          style: TextStyle(fontWeight: bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80",
              ),
              radius: 30,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${_course.rating} Instructor rating'),
                Text('${_course.reviewsCount} Reviews'),
                const Text('303.484 Students'),
                const Text('49 Courses'),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ReadMoreText(
          "I'm software and web technologies engineer, a life coach trainer who is also a serial entrepreneur with multiple online businesses, ranging from online jewelry shops, affiliate websites, application development and consultations services, personal online schools, etc. With over one million students, and clients growing by the thousands a day, Mr. Diaz lets the numbers speak for themselves. Founding multiple online companies have allowed Mr. Diaz to have the time to teach others. He currently teaches web technologies on different online platforms. He also teaches life coaching sessions to help others achieve a high level of success in many areas of life.",
          trimExpandedText: '\n\nShow less',
          trimCollapsedText: '\n\nShow more',
          moreStyle: TextStyle(
            color: primaryColor,
            fontWeight: bold,
          ),
          lessStyle: TextStyle(
            color: primaryColor,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class CourseWillLearn extends StatelessWidget {
  const CourseWillLearn({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("What you'll learn"),
        const SizedBox(
          height: 8,
        ),
        ..._course.whatWillLearn
            .map(
              (e) => CourseWillLearnItem(text: e),
            )
            .toList(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class CourseCreator extends StatelessWidget {
  const CourseCreator({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Created by ',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              _course.instructor,
              style: ownerOnDetailPageText.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CourseRating extends StatelessWidget {
  const CourseRating({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '${_course.rating}',
            ),
            const SizedBox(
              width: 8,
            ),
            RatingStars(
              rating: _course.rating,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '(${_course.reviewsCount} ratings)',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: darkGray),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CourseLabel extends StatelessWidget {
  const CourseLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: const [
            BestSellerLabel(),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CourseDescription extends StatelessWidget {
  const CourseDescription({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _course.description,
          style: TextStyle(color: darkGray),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _course.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CoursePreview extends StatelessWidget {
  const CoursePreview({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);

  final Course _course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoursePreviewPlayer(course: _course),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: bold),
    );
  }
}

class CourseWillLearnItem extends StatelessWidget {
  final String text;
  const CourseWillLearnItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check_rounded,
          color: darkGray,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            text,
          ),
        ),
      ],
    );
  }
}

class CoursePreviewPlayer extends StatelessWidget {
  const CoursePreviewPlayer({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(course.coverUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    secondaryColor.withAlpha(70),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: FittedBox(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Preview this course',
                    style: TextStyle(fontWeight: bold, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
