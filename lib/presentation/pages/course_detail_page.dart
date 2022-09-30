import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:udemy_clone/core/constants/colors.dart';
import 'package:udemy_clone/core/dummies/courses.dart';
import 'package:udemy_clone/core/dummies/sections.dart';
import 'package:udemy_clone/domain/entities/course.dart';
import 'package:udemy_clone/presentation/widgets/home/best_seller_label.dart';
import 'package:udemy_clone/presentation/widgets/home/rating_stars.dart';

import '../../core/constants/text_styles.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Course course = courses[0];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: appBarItemColor,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              color: appBarItemColor),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            CoursePreviewPlayer(course: course),
            const SizedBox(
              height: 8,
            ),

            // course title
            Text(
              course.title,
              style: courseTitleInDetailPageText.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            // course description
            Text(
              'Nam tempus mi id dictum varius. Cras fringilla aliquam ligula vel pharetra. Nulla bibendum felis nec ex efficitur, ullamcorper eleifend libero egestas. ',
              style: courseDescriptionText,
            ),
            const SizedBox(
              height: 8,
            ),

            // best seller label
            Wrap(
              children: const [
                BestSellerLabel(),
              ],
            ),
            const SizedBox(
              height: 8,
            ),

            // rating star
            Row(
              children: [
                Text(
                  '${course.rating}',
                  style: ratingNumberOnDetailPageText.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                RatingStars(
                  rating: course.rating,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),

            // reviews count and student
            Text(
              '(${course.reviewsCount} ratings) 1,872 students',
              style: reviewOnDetailPageText.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            // owner
            Row(
              children: [
                const Text(
                  'Created by ',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  course.owner,
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

            // last update
            Row(
              children: [
                Icon(
                  Icons.notification_important_rounded,
                  size: 16,
                  color: secondaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Last updated 12/2021',
                  style: lastUpdateText.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.globe,
                  size: 16,
                  color: secondaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'English',
                  style: lastUpdateText.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.subtitles,
                  size: 16,
                  color: secondaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'English, French, ',
                  style: lastUpdateText.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '6 more',
                  style: moreSubText.copyWith(
                    fontWeight: bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),

            // what you'll learn
            const SectionTitle("What you'll learn"),
            const SizedBox(
              height: 8,
            ),
            const WillLearnItem(
              text:
                  "You will learn the component parts of music-rhytm, pitch, melody, harmony, form, etc.",
            ),
            const WillLearnItem(
              text:
                  "Then you will apply those concepts to an exploration of the history of classical music.",
            ),
            const SizedBox(
              height: 16,
            ),

            // Curiculum
            const SectionTitle('Curiculum'),
            const SizedBox(
              height: 4,
            ),
            Text(
              '32 sections - 148 lectures - 31h 11m total length',
              style: curiculumInfoText.copyWith(
                fontSize: 12,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 2,
              itemBuilder: _buildCuriculumItem,
            ),
            const MoreButton(label: '5 Section More'),
            const SizedBox(
              height: 16,
            ),

            // students also bought
            const SectionTitle('Students also bought'),
            const SizedBox(
              height: 8,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: courses.length,
              itemBuilder: (context, index) => ListTile(
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          courses[index].coverUrl,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                title: Text(courses[index].title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(courses[index].owner),
                    Row(
                      children: [
                        RatingStars(rating: courses[index].rating),
                        const SizedBox(
                          width: 4,
                        ),
                        Text("(${courses[index].reviewsCount})"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const MoreButton(label: 'See All'),
            const SizedBox(
              height: 16,
            ),

            // Instructor
            const SectionTitle('Instructor'),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Dimas Saputro',
              style: instructorNameText.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
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
                  children: const [
                    Text('4.4 Instructor rating'),
                    Text('34,443 Reviews'),
                    Text('303,484 Students'),
                    Text('49 Courses'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ReadMoreText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lobortis ac nisi sed suscipit. In id velit eget lacus tristique pulvinar sollicitudin eget dolor. Suspendisse venenatis odio orci, quis tincidunt turpis vehicula id. Fusce vulputate velit massa, vitae interdum nisi porttitor id. Integer laoreet semper ex, sit amet pulvinar mauris. Praesent cursus placerat turpis vitae consequat. Vestibulum rhoncus nisi ex, id dictum eros venenatis ac. Donec rutrum dictum consectetur. Vivamus elit nulla, malesuada quis rutrum sed, consectetur pretium metus. Integer eu luctus erat. Donec consectetur tempor porttitor. Curabitur vel metus non ex ultricies mollis vitae in magna.',
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
              height: 8,
            ),
            const MoreButton(label: 'View profile'),
            const SizedBox(
              height: 16,
            ),

            // students feedback
            const SectionTitle('Student Feedback'),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  '4.7',
                  style: ratingDisplayText.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
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
                  style: feedbackTitleText.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                Row(
                  children: const [
                    RatingStars(rating: 4),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '2 weeks ago',
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
                  style: feedbackTitleText.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                Row(
                  children: const [
                    RatingStars(rating: 3),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '1 month ago',
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
            const MoreButton(label: 'See More Reviews'),
          ],
        ),
      ),
    );
  }

  Widget _buildCuriculumItem(context, parentIndex) => Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          iconColor: primaryColor,
          collapsedIconColor: primaryColor,
          textColor: secondaryColor,
          collapsedTextColor: secondaryColor,
          title: Text(
              "Section ${parentIndex + 1} - ${sections[parentIndex].title}"),
          trailing: const Icon(Icons.add_rounded),
          children: sections[parentIndex]
              .modules
              .asMap()
              .entries
              .map(
                (e) => ListTile(
                  leading: Text(
                    (e.key + 1).toString(),
                  ),
                  title: Text(
                    "${parentIndex + 1}.${e.key + 1} ${e.value}",
                  ),
                  subtitle: Text('Video - 16:25 mins'),
                ),
              )
              .toList(),
        ),
      );
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
      style: subTitleOnDetailCourseText.copyWith(
        fontSize: 20,
        fontWeight: bold,
      ),
    );
  }
}

class MoreButton extends StatelessWidget {
  final String label;
  const MoreButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        side: BorderSide(
          color: secondaryColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          label,
          style: buttonMoreText,
        ),
      ),
    );
  }
}

class WillLearnItem extends StatelessWidget {
  final String text;
  const WillLearnItem({
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
          color: secondaryColor,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            text,
            style: whatWillLearnText,
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
                    style: playCourseText.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
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
