import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_clone/core/constants/colors.dart';
import 'package:udemy_clone/core/dummies/sections.dart';
import 'package:udemy_clone/injections.dart';
import 'package:udemy_clone/presentation/cubits/lecture_selected_video_cubit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  LectureSelectedVideoCubit videoCubit = getIt<LectureSelectedVideoCubit>();

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Flutter Bloc State Management'),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text('Khuldi Project'),
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
                    isScrollable: true,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    tabs: const [
                      Text(
                        'Lectures',
                      ),
                      Text(
                        'More',
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
                              Text(sections[parentIndex].title),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount:
                                    sections[parentIndex].lectures.length,
                                itemBuilder: (context, childIndex) => ListTile(
                                  onTap: () {
                                    videoCubit.setVideo(sections[parentIndex]
                                        .lectures[childIndex]
                                        .videoLink);
                                  },
                                  title: Text(
                                    sections[parentIndex]
                                        .lectures[childIndex]
                                        .title,
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
