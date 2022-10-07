import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_clone/share/constants/colors.dart';
import 'package:udemy_clone/share/constants/text_styles.dart';
import 'package:udemy_clone/share/dummies/sections.dart';
import 'package:udemy_clone/injections.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_index_cubit.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_video_cubit.dart';
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
    final videoId = YoutubePlayer.convertUrlToId(videoCubit.state);

    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  ProgressBar(
                    isExpanded: true,
                  ),
                  const PlaybackSpeedButton(),
                  FullScreenButton(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Flutter Bloc State Management',
              style: courseTitlePlayerStyle.copyWith(
                fontSize: 18,
              ),
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
              'Khuldi Project',
              style: creatorStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
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
                    tabs: const [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'Lectures',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'More',
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: sections.length,
                          itemBuilder: (context, parentIndex) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  "Section ${parentIndex + 1} - ${sections[parentIndex].title}",
                                  style: sectionTitleStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              BlocBuilder(
                                bloc: indexCubit,
                                builder: (context, state) => ListView.builder(
                                  shrinkWrap: true,
                                  physics: const ClampingScrollPhysics(),
                                  itemCount:
                                      sections[parentIndex].lectures.length,
                                  itemBuilder: (context, childIndex) =>
                                      ListTile(
                                    leading: Text(
                                      "${childIndex + 1}",
                                      textAlign: TextAlign.center,
                                    ),
                                    selectedTileColor: selectedLectureColor,
                                    selected: (parentIndex ==
                                                indexCubit.state[0] &&
                                            childIndex == indexCubit.state[1])
                                        ? true
                                        : false,
                                    onTap: () {
                                      videoCubit.setVideo(sections[parentIndex]
                                          .lectures[childIndex]
                                          .videoLink);
                                      indexCubit.setSelectedIndex(
                                          sectionIndex: parentIndex,
                                          lectureIndex: childIndex);
                                    },
                                    selectedColor: primaryColor,
                                    title: Text(
                                      sections[parentIndex]
                                          .lectures[childIndex]
                                          .title,
                                      style: lectureTitleStyle.copyWith(
                                        fontWeight: (parentIndex ==
                                                    indexCubit.state[0] &&
                                                childIndex ==
                                                    indexCubit.state[1])
                                            ? bold
                                            : regular,
                                        fontSize: 14,
                                      ),
                                    ),
                                    subtitle: const Text('Video - 14.01 mins'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListView(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Text('Kosong'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
