import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/course.dart';
import '../../share/dummies/courses.dart';
import '../../share/constants/colors.dart';
import '../../injections.dart';
import '../cubits/lecture_selected_index_cubit.dart';
import '../cubits/lecture_selected_video_cubit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../share/styles/themes.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  LectureSelectedVideoCubit videoCubit = getIt<LectureSelectedVideoCubit>();
  LectureSelectedIndexCubit indexCubit = getIt<LectureSelectedIndexCubit>();

  @override
  Widget build(BuildContext context) {
    // temporary
    videoCubit.setVideo(featuredCourses[0].curiculums[0].lectures[0].videoLink);
    indexCubit.setSelectedIndex(sectionIndex: 0, lectureIndex: 0);

    Course course = featuredCourses[0];

    final videoId = YoutubePlayer.convertUrlToId(videoCubit.state);

    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VideoPlayer(videoCubit: videoCubit, controller: controller),
          CourseInfo(course: course),
          Body(indexCubit: indexCubit, videoCubit: videoCubit),
        ],
      ),
    );
  }
}

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            course.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            course.instructor,
            style: TextStyle(color: darkGray),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    Key? key,
    required this.videoCubit,
    required this.controller,
  }) : super(key: key);

  final LectureSelectedVideoCubit videoCubit;
  final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: BlocListener(
            bloc: videoCubit,
            listener: (context, state) {
              final listenerVideoId =
                  YoutubePlayer.convertUrlToId(videoCubit.state);
              controller.load(listenerVideoId!);
            },
            child: YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
              bottomActions: [
                CurrentPosition(),
                const SizedBox(
                  width: 8,
                ),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    backgroundColor: blue.withOpacity(0.5),
                    playedColor: blue,
                    bufferedColor: Colors.white,
                    handleColor: blue,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                RemainingDuration(),
              ],
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

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.indexCubit,
    required this.videoCubit,
  }) : super(key: key);

  final LectureSelectedIndexCubit indexCubit;
  final LectureSelectedVideoCubit videoCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              labelColor: secondaryColor,
              indicatorColor: secondaryColor,
              indicatorWeight: 1,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 16,
              ),
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    'Lectures',
                    style: TextStyle(fontWeight: medium),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    'More',
                    style: TextStyle(fontWeight: medium),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: featuredCourses[0].curiculums.length,
                    itemBuilder: (context, parentIndex) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Section ${parentIndex + 1} - ${featuredCourses[0].curiculums[parentIndex].title}",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontWeight: bold),
                          ),
                        ),
                        BlocBuilder(
                          bloc: indexCubit,
                          builder: (context, state) => ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: featuredCourses[0]
                                .curiculums[parentIndex]
                                .lectures
                                .length,
                            itemBuilder: (context, childIndex) => ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              leading: Text(
                                "${parentIndex + 1}.${childIndex + 1}",
                              ),
                              selectedTileColor: selectedLectureColor,
                              selected: (parentIndex == indexCubit.state[0] &&
                                      childIndex == indexCubit.state[1])
                                  ? true
                                  : false,
                              onTap: () {
                                videoCubit.setVideo(featuredCourses[0]
                                    .curiculums[parentIndex]
                                    .lectures[childIndex]
                                    .videoLink);
                                indexCubit.setSelectedIndex(
                                    sectionIndex: parentIndex,
                                    lectureIndex: childIndex);
                              },
                              selectedColor: primaryColor,
                              title: Text(
                                featuredCourses[0]
                                    .curiculums[parentIndex]
                                    .lectures[childIndex]
                                    .title,
                                style: TextStyle(
                                  fontWeight:
                                      (parentIndex == indexCubit.state[0] &&
                                              childIndex == indexCubit.state[1])
                                          ? bold
                                          : regular,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text('Sorry, this feature is not created'),
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
