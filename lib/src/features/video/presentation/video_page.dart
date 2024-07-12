import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/video_player/presentation/pages/widgets/video_player_widget/video_player_widget.dart';
import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});
  static const pageName = 'video-page';
  static const pagePath = '/video-page';

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mashhad),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .surface,
        surfaceTintColor: Theme
            .of(context)
            .colorScheme
            .surfaceTint,

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(AppSize.s12),
                  ),
                  // child: VideoPlayerWidget(),

                ),
              ),
              const SizedBox(height: 24),
              Column(
                children: [
                  Center(
                    child: Text(
                      S.of(context).mashhad1,
                       style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Space.h16,
                  Center(
                    child: Text(
                      S.of(context).mashhad2,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
