import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  final videoPlayerController = VideoPlayerController.networkUrl(Uri.parse('https://aspb31.asset.aparat.com/aparat-video/0cd38e251083ae2fa5396b25d509fc2b37005159-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjhkNzZmZThhZTJmZDg4NmE1ODhiMTQzYzAyYWNmMDg4IiwiZXhwIjoxNzIwNjMyMTc0LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.o4o-82Hys50zOw9vdlKxFJIfEJvGv4KQgRYzO4Hvz-s'));
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  int? bufferDelay;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  List<String> srcs = [
    'http://46.209.222.131//hls/videos/1720780482/index.m3u8'
  ];

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(srcs[0]));
    await Future.wait([
      _videoPlayerController.initialize(),
    ]);
    setState(() {});
  }

  int currPlayIndex = 0;

  Future<void> toggleVideo() async {
    await _videoPlayerController.pause();
    currPlayIndex += 1;
    if (currPlayIndex >= srcs.length) {
      currPlayIndex = 0;
    }
    await initializePlayer();
  }


  @override
  Widget build(BuildContext context) {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      progressIndicatorDelay:
      bufferDelay != null ? Duration(milliseconds: bufferDelay!) : null,
      customControls: const MaterialControls(
        showPlayButton: true,
      ),
    );
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
          // child:  _videoPlayerController != null ? VideoPlayer(_videoPlayerController)
            child: _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
                ? Chewie(
              controller: _chewieController!,
            )
                : const AvaLoading(),
          ),
        ),
      ],
    );
  }
}